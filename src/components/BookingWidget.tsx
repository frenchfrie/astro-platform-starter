// src/components/BookingWidget.tsx
import React, { useState, useMemo } from 'react';

interface Props {
    pricePerNight: number;
    cleaningFee: number;
    maxGuests: number;
    abritelUrl: string;
}

export default function BookingWidget({ pricePerNight, cleaningFee, maxGuests, abritelUrl }: Props) {
    const [dates, setDates] = useState({ checkin: '', checkout: '' });
    const [guests, setGuests] = useState(2);

    const bookingDetails = useMemo(() => {
        if (!dates.checkin || !dates.checkout) return null;

        const start = new Date(dates.checkin);
        const end = new Date(dates.checkout);
        const nights = Math.ceil((end.getTime() - start.getTime()) / (1000 * 60 * 60 * 24));

        if (nights <= 0) return null;

        const subtotal = nights * pricePerNight;
        return { nights, subtotal, total: subtotal + cleaningFee };
    }, [dates, pricePerNight, cleaningFee]);

    return (
        <div className="bg-white border border-stone-200 rounded-xl shadow-xl p-6 sticky top-24">
            <div className="mb-6">
                <span className="text-2xl font-bold text-dark">{pricePerNight}€</span>
                <span className="text-stone-500 text-sm"> / nuit</span>
            </div>

            <div className="space-y-4">
                {/* Sélecteur de dates */}
                <div className="grid grid-cols-2 border border-stone-300 rounded-lg overflow-hidden">
                    <div className="p-2 border-r border-stone-300">
                        <label className="block text-[10px] uppercase font-bold text-stone-500">Arrivée</label>
                        <input
                            type="date"
                            className="w-full text-sm focus:outline-none"
                            onChange={(e) => setDates({ ...dates, checkin: e.target.value })}
                        />
                    </div>
                    <div className="p-2">
                        <label className="block text-[10px] uppercase font-bold text-stone-500">Départ</label>
                        <input
                            type="date"
                            className="w-full text-sm focus:outline-none"
                            onChange={(e) => setDates({ ...dates, checkout: e.target.value })}
                        />
                    </div>
                </div>

                {/* Voyageurs */}
                <div className="border border-stone-300 rounded-lg p-2">
                    <label className="block text-[10px] uppercase font-bold text-stone-500">Voyageurs</label>
                    <select
                        value={guests}
                        onChange={(e) => setGuests(parseInt(e.target.value))}
                        className="w-full text-sm focus:outline-none bg-transparent"
                    >
                        {[...Array(maxGuests)].map((_, i) => (
                            <option key={i+1} value={i+1}>{i+1} personne{i > 0 ? 's' : ''}</option>
                        ))}
                    </select>
                </div>

                {/* Bouton Abritel */}
                <a
                    href={abritelUrl}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="block w-full bg-warm hover:bg-opacity-90 text-white text-center font-bold py-3 rounded-lg transition-all duration-200 transform hover:-translate-y-1 shadow-md"
                >
                    Réserver sur Abritel
                </a>

                <p className="text-[11px] text-center text-stone-400">
                    Vous allez être redirigé vers notre partenaire Abritel
                </p>

                {/* Récapitulatif dynamique */}
                {bookingDetails && (
                    <div className="pt-4 border-t border-stone-100 space-y-2 animate-in fade-in slide-in-from-top-2">
                        <div className="flex justify-between text-sm text-stone-600">
                            <span>{pricePerNight}€ x {bookingDetails.nights} nuits</span>
                            <span>{bookingDetails.subtotal}€</span>
                        </div>
                        <div className="flex justify-between text-sm text-stone-600">
                            <span>Frais de ménage</span>
                            <span>{cleaningFee}€</span>
                        </div>
                        <div className="flex justify-between font-bold text-dark pt-2 border-t border-stone-200">
                            <span>Total (estimé)</span>
                            <span>{bookingDetails.total}€</span>
                        </div>
                    </div>
                )}
            </div>
        </div>
    );
}
