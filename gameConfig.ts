export const REGIONS = {
"main": { minLevel: 1, baseMultiplier: 0.6 },
"mountain": { minLevel: 10, baseMultiplier: 1.1 },
"ocean": { minLevel: 20, baseMultiplier: 1.25 },
"woods": { minLevel: 30, baseMultiplier: 1.4 },
"desert": { minLevel: 40, baseMultiplier: 1.6 }
};


export const LOT_DAILY_PRODUCTION = {
copper: 1_000_000,
silver: 500_000,
gold: 100_000,
mithril: 10
};


export const SECONDS_PER_DAY = 86400;


export const LOT_PRODUCTION_PER_SECOND = {
copper: LOT_DAILY_PRODUCTION.copper / SECONDS_PER_DAY,
silver: LOT_DAILY_PRODUCTION.silver / SECONDS_PER_DAY,
gold: LOT_DAILY_PRODUCTION.gold / SECONDS_PER_DAY,
mithril: LOT_DAILY_PRODUCTION.mithril / SECONDS_PER_DAY
};
