CREATE TABLE "users" (
  "id" serial NOT NULL,
  "name" text NOT NULL,
  "created" timestamp NOT NULL DEFAULT now(),
  "updated" timestamp NOT NULL DEFAULT now(),
  PRIMARY KEY("id")
);
