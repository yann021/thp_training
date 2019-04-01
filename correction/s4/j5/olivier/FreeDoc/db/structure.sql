CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE IF NOT EXISTS "appointments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "doctor_id" integer, "patient_id" integer, "appointment_date" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "city_id" integer);
CREATE INDEX "index_appointments_on_doctor_id" ON "appointments" ("doctor_id");
CREATE INDEX "index_appointments_on_patient_id" ON "appointments" ("patient_id");
CREATE TABLE IF NOT EXISTS "cities" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "city" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_appointments_on_city_id" ON "appointments" ("city_id");
CREATE TABLE IF NOT EXISTS "patients" ("id" integer NOT NULL PRIMARY KEY, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "first_name" varchar DEFAULT NULL, "city_id" integer DEFAULT NULL, "last_name" varchar);
CREATE INDEX "index_patients_on_city_id" ON "patients" ("city_id");
CREATE TABLE IF NOT EXISTS "doctors" ("id" integer NOT NULL PRIMARY KEY, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "first_name" varchar DEFAULT NULL, "specialty" varchar DEFAULT NULL, "city_id" integer DEFAULT NULL, "last_name" varchar DEFAULT NULL);
CREATE INDEX "index_doctors_on_city_id" ON "doctors" ("city_id");
CREATE TABLE IF NOT EXISTS "specialties" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "name" varchar);
CREATE TABLE IF NOT EXISTS "doctor_specialties" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "schema_migrations" (version) VALUES
('20190131125821'),
('20190131125831'),
('20190131125840'),
('20190131133706'),
('20190131135047'),
('20190131142145'),
('20190131143419'),
('20190131144145'),
('20190131145626'),
('20190131150047'),
('20190131151606');


