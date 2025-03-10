-- Queries file --

use db_hikes;

-- Simple queries --
select * from trails where number_of_camps = 1; -- Give all the informations in trails where there is only 1 camp.

select name, elevation_gain from trails where difficulty like 'beginner'; -- gives the trails names along with their elevation gain for the beginner trails

select email as contact_info from hikers where level like 'experienced'; -- Gives the emails of experienced Hikers

select name, number_of_places from camps where sleepable_at = 1; -- Gives the names and number of places where you can sleep


-- Queries containing "JOIN"--
select t.name, r.region_name from trails t join region r using (region_name) where r.number_of_trail >= 5;-- Gives the Name of the trail and the region where it is located, for the regions where there have been than 5 trails

select h.name, h.surname, count(hc.id_trail) as hikes_completed from hikers h
left join has_completed hc on hc.id_hiker = hc.id_hiker
group by h.id_hiker order by hikes_completed;-- Counts the number of trails each hiker has completed, groups by hiker and sorts by number of hikes

select  t.id_trail, t.name as trail, t.length__km_ as length_trail, t.difficulty, r.Region_name
from trails t
join region r on t.region_name = r.region_name; -- gives details of trails along with the region where they are located

select t.name as trail_name, c.name as camp_name, c.number_of_places
from trails t
join camps c on t.ID_trail = c.ID_trail; -- Gives the trails along with their camps and the number of places offered 


-- Aggregation queries --
select region_name, COUNT(*) as number_of_trails from trails group by region_name; -- Gives the regions with the number of trails available in the region.

select id_trail, SUM(number_of_places) as total_places from camps group by id_trail; -- Gives the total places available at the camps along the trails recognizable by the ID

select sum(number_of_deaths) as total_deaths from trails; -- gives the total of death covering all trails

select name, number_of_camps from trails where number_of_camps = (select MAX(number_of_camps) as max_camps from trails); -- Gives the trail with the biggest number of camps available


-- Additionnal queries -- 
select * from trails order by length__km_; -- Gives the trails table in ascending length

