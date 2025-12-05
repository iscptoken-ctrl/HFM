-- players
CREATE TABLE IF NOT EXISTS players (
id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
username text UNIQUE,
level int DEFAULT 1,
copper bigint DEFAULT 0,
silver bigint DEFAULT 0,
gold bigint DEFAULT 0,
mithril numeric DEFAULT 0,
equipment_level int DEFAULT 1,
created_at timestamptz DEFAULT now(),
updated_at timestamptz DEFAULT now()
);


-- lots
CREATE TABLE IF NOT EXISTS lots (
id serial PRIMARY KEY,
region text NOT NULL,
lot_index int NOT NULL,
owner uuid REFERENCES players(id),
owner_tax numeric DEFAULT 0.01,
paid_total numeric DEFAULT 0,
created_at timestamptz DEFAULT now(),
updated_at timestamptz DEFAULT now()
);


-- lot_activity
CREATE TABLE IF NOT EXISTS lot_activity (
id serial PRIMARY KEY,
lot_id int REFERENCES lots(id),
player_id uuid REFERENCES players(id),
action text,
amount numeric,
created_at timestamptz DEFAULT now()
);


-- bank_balances
CREATE TABLE IF NOT EXISTS bank_balances (
id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
player_id uuid REFERENCES players(id),
deposited numeric DEFAULT 0,
last_claim timestamptz,
accrued_hfm numeric DEFAULT 0
);
