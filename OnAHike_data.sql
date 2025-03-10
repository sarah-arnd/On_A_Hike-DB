-- Filling file --

-- Insert into Region first (since Trails depend on it)
INSERT INTO Region (Region_name, number_of_trail) VALUES
('Alps', 5),
('Rockies', 7),
('Pyrenees', 4);

-- Insert into Hikers
INSERT INTO Hikers (ID_hiker, name, email, surname, number_of_hikes, number_of_km, level) VALUES
(1, 'John', 'john.doe@gmail.com', 'Doe', 10, 120, 'experienced'),
(2, 'Sarah', 'sarah.smith@hotmail.com', 'Smith', 15, 200, 'advanced'),
(3, 'Mike', 'mike.adventurer@yahoo.com', 'Adventurer', 5, 60, 'beginner');

-- Insert into Trails
INSERT INTO trails (ID_trail, name, length__km_, elevation_gain, total_accomplishments, number_of_camps, duration, number_of_deaths, difficulty, Region_name) VALUES
(1, 'Mountain Trail', 20, 800, 30, 2, TIME('06:00:00'), 1, 'experienced', 'Alps'),
(2, 'Forest Path', 10, 200, 50, 1, TIME('02:30:00'), 0, 'beginner', 'Rockies'),
(3, 'Ridge Walk', 15, 500, 25, 3, TIME('04:00:00'), 2, 'advanced', 'Pyrenees'),
(4, 'Lake Loop', 8, 150, 60, 1, TIME('01:45:00'), 0, 'beginner', 'Rockies'),
(5, 'Glacier Run', 25, 1000, 12, 4, TIME('08:30:00'), 3, 'master jedi', 'Alps');

-- Insert into Camps
INSERT INTO Camps (camp_ID, name, distance_from_last_stop, distance_to_next_stop, number_of_places, sleepable_at, ID_trail) VALUES
(1, 'Base Camp', 0, '10', '20', TRUE, 1),
(2, 'Midway Rest', 10, '10', '15', TRUE, 1),
(3, 'Forest Camp', 0, '10', '30', TRUE, 2),
(4, 'Ridge Shelter', 0, '5', '10', FALSE, 3),
(5, 'Lake Camp', 0, '8', '25', TRUE, 4);

-- Insert into has_completed
INSERT INTO has_completed (ID_hiker, ID_trail) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);

-- Insert into rates_a_camp
INSERT INTO rates_a_camp (ID_hiker, camp_ID, rate, comment) VALUES
(1, 1, 5, 'Great base!'),
(2, 3, 4, 'Quiet and peaceful'),
(3, 5, 3, 'Okay spot');

-- Insert into rates_a_trail
INSERT INTO rates_a_trail (ID_hiker, ID_trail, rate, comment) VALUES
(1, 1, 5, 'Amazing views!'),
(2, 3, 4, 'Tough but worth it'),
(3, 4, 3, 'Nice and easy');

-- Insert into has_favorites
INSERT INTO has_favorites (ID_hiker, ID_trail) VALUES
(1, 3),
(2, 5),
(3, 4);