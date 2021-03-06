DROP TABLE IF EXISTS menu_items CASCADE;

CREATE TABLE menu_items (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  picture VARCHAR(255) NOT NULL,
  price INTEGER NOT NULL DEFAULT 0,
  restaurant_id INTEGER REFERENCES restaurants(id) ON DELETE CASCADE
);
