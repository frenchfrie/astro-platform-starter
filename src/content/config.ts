import { defineCollection, z } from 'astro:content';

const gites = defineCollection({
    type: 'data',
    schema: ({ image }) =>
        z.object({
            id: z.string(),
            title: z.string(),
            description: z.string(),
            pricePerNight: z.number(),
            cleaningFee: z.number(),
            maxGuests: z.number(),
            deposit: z.number(),
            abritelUrl: z.string().url(),
            abritelId: z.string(),
            photos: z.array(
                z.object({
                    src: image(),
                    alt: z.string()
                })
            ),
            amenities: z.record(z.array(z.string())).optional(),
            features: z.array(z.string())
        })
});

const blogCollection = defineCollection({
    type: 'content',
    schema: z.object({
        title: z.string(),
        excerpt: z.string(),
        date: z.date(),
        category: z.enum(['vie-du-domaine', 'activites', 'gastronomie', 'patrimoine']),
        image: z.string().optional(), // Chemin vers l'image dans assets
        featured: z.boolean().default(false)
    })
});

const region = defineCollection({
    type: 'data',
    schema: ({ image }) =>
        z.object({
            title: z.string(),
            distance: z.string(),
            description: z.string(),
            highlights: z.array(z.string()),
            image: image().optional(),
            imageAlt: z.string().optional(),
        })
});

export const collections = {
    blog: blogCollection,
    gites,
    region,
};
