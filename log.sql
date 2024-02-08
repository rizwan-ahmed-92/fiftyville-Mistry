-- Keep a log of any SQL queries you execute as you solve the mystery.
SELECT description FROM crime_scene_reports WHERE year = 2021 AND month = 7 AND day = 28 AND street = 'Humphrey Street';
SELECT transcript, name FROM interviews WHERE year = 2021 AND month = 7 AND day = 28;
SELECT license_plate, minute FROM bakery_security_logs WHERE year = 2021 AND month = 7 AND day = 28 AND activity = 'exit' AND hour = 10 AND minute <= 25;
SELECT * FROM people WHERE license_plate IN (SELECT license_plate FROM bakery_security_logs WHERE year = 2021 AND month = 7 AND day = 28 AND activity = 'exit' AND hour = 10 AND minute <= 25);
SELECT * FROM people WHERE id IN ( SELECT person_id FROM bank_accounts WHERE account_number IN ( SELECT account_number FROM atm_transactions WHERE year = 2021 AND month = 7 AND day = 28  AND atm_location = 'Leggett Street' AND tra
nsaction_type = 'withdraw') );
SELECT caller, receiver, duration FROM phone_calls WHERE year = 2021 AND day = 28 AND month = 7 AND duration <= 60; -- BRUCE or DIANA
SELECT * FROM flights WHERE id IN ( SELECT flight_id FROM passengers WHERE passport_number IN (SELECT passport_number FROM people WHERE passport_number = 5773159633 )); -- Bruce
SELECT city, id FROM airports WHERE id IN (SELECT destination_airport_id FROM flights WHERE id IN ( SELECT flight_id FROM passengers WHERE year = 2021 AND day > 28 AND month = 7 AND passport_number IN (SELECT passport_number FROM people WHERE name = 'Bruce'))); -- New York City
SELECT name FROM people WHERE phone_number IN ( SELECT receiver FROM phone_calls WHERE year = 2021 AND day = 28 AND month = 7 AND duration < 60 AND caller IN (SELECT phone_number FROM people WHERE name = 'Bruce')); -- Robin
