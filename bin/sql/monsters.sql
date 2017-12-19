CREATE TABLE monsters (
  name        CHARACTER VARYING(50),
  personality CHARACTER VARYING(50)
);

CREATE TABLE habitats (
  id          SERIAL,
  name        CHARACTER VARYING(50),
  climate     CHARACTER VARYING(50),
  temperature INT
);

CREATE TABLE residence (
  monster CHARACTER VARYING(50),
  habitat CHARACTER VARYING(50)
);

INSERT INTO monsters (name, personality)
VALUES
  ('diablo', 'agressive'),
  ('ghost', 'patient'),
  ('iron man', 'passionate');

INSERT INTO habitats (name, climate, temperature)
VALUES
  ('desert', 'dry', 100),
  ('forrest', 'haunted', 70),
  ('mountain', 'icy', 30);

INSERT INTO residence (monster, habitat)
VALUES
  ('diablo', 'mountain'),
  ('ghost', 'forrest'),
  ('iron man', 'desert');
