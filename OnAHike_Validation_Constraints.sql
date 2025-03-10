-- Constraints file --

describe hikers;
describe trails;
describe rates_a_camp;
describe rates_a_trail;

-- Constraints over rating 
alter table rates_a_camp add constraint ck_rating check (-1 < rate < 6);
alter table rates_a_trail add constraint ck_RatingTrail check (-1 < rate < 6);

-- Constraints over hiker 
alter table hikers add constraint ck_mail check (email like '%@%.%');
alter table hikers add constraint ck_level check (level in ("Beginner", "Experienced", "Advanced", "Jedi Master"));

-- Constraints over trails 
alter table trails add constraint ck_LevelTrails check (difficulty in ("Beginner", "Experienced", "Advanced", "master jedi"));





