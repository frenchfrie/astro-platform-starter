import { defineCollection, z } from 'astro:content';

const gites = defineCollection({
    type: 'data',
    schema: ({ image }) => z.object({
        id: z.string(),
        title: z.string(),
        description: z.string(),
        pricePerNight: z.number(),
        cleaningFee: z.number(),
        maxGuests: z.number(),
        deposit: z.number(),
        abritelUrl: z.string().url(),
        photos: z.array(z.object({
            src: z.string(),
            alt: z.string()
        })),
        amenities: z.record(z.array(z.string())).optional(),
        features: z.array(z.string()), // ex: ["Piscine", "Jacuzzi", "Wifi"]
    }),
});

export const collections = { gites };
