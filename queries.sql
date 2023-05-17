INSERT into citizen(name, address, phone_number, data_of_birth) VALUES(Citizen One, 123 70 AVE SW Edmonton, 888-963-5689, 1990-05-13), (Citizen Two, 5698 64 ST Calgary SE, 693-714-5798, 2001-06-18);
INSERT into tax_account(date_created, account_number, citizen_id) VALUES(CURRENT_TIMESTAMP, 789665478, 2);
INSERT into car(citizen_id, release_year, model, make) VALUES(1, 2021, Tacoma, Toyota), (2, 1990, Cherokee, Jeep), (2, 2008, Escape, Ford), (1, 2023, 3, Mazda);
