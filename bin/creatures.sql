CREATE TABLE wizards
(
  name  CHARACTER VARYING(50),
  power CHARACTER VARYING(50)
)

CREATE TABLE elves
(
  name  CHARACTER VARYING(50),
  speed REAL
)

CREATE TABLE hobbits
(
  name        CHARACTER VARYING(50),
  personality CHARACTER VARYING(50)
)
INSERT INTO wizards (name, power)
VALUES
  ("Gandolf", "Fireworks"),
  ("Sauron", "Rings"),
  ("Saruman", "Betrayal");

INSERT INTO elves (name, speed)
VALUES
  ("Legolas", 10),
  ("Arwen", 6),
  ("Elrond", 8);

INSERT INTO hobbits (name, personality)
VALUES
  ("Frodo", "Careful"),
  ("Sam", "Brave"),
  ("Bilbo", "Greedy");

