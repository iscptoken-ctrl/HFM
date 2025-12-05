import { KV } from '@vercel/kv';


export const kv = new KV({
url: process.env.VERCEL_KV_URL,
token: process.env.VERCEL_KV_TOKEN
});


// Example usage elsewhere: await kv.zadd('leaderboard', { score: 123, member: 'playerId' })
