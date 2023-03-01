-- DROP TABLE IF EXISTS tv_shows;

CREATE TABLE tv_shows (
  id SERIAL PRIMARY KEY,
  show_name VARCHAR(60) NOT NULL,
  premiere_date DATE NOT NULL,
  num_seasons INTEGER NOT NULL
);

INSERT INTO tv_shows (show_name, premiere_date, num_seasons) 
VALUES
  ('Breaking Bad', '2008-01-20', 5),
  ('The Wire', '2002-06-02', 5),
  ('The Sopranos', '1999-01-10', 6),
  ('Game of Thrones', '2011-04-17', 8),
  ('Mad Men', '2007-07-19', 7),
  ('The Crown', '2016-11-04', 5),
  ('Stranger Things', '2016-07-15', 4),
  ('Friends', '1994-09-22', 10),
  ('The Office (US)', '2005-03-24', 9),
  ('The Simpsons', '1989-12-17', 33),
  ('The West Wing', '1999-09-22', 7),
  ('The Twilight Zone', '1959-10-02', 5),
  ('The X-Files', '1993-09-10', 9),
  ('Seinfeld', '1989-07-05', 9),
  ('Lost', '2004-09-22', 6),
  ('M*A*S*H', '1972-09-17', 11),
  ('Twin Peaks', '1990-04-08', 2),
  ('Star Trek: The Next Generation', '1987-09-28', 7),
  ('House of Cards (US)', '2013-02-01', 6),
  ('The Big Bang Theory', '2007-09-24', 12),
  ('The Handmaid''s Tale', '2017-04-26', 4),
  ('Downton Abbey', '2010-09-26', 6),
  ('The Golden Girls', '1985-09-14', 7),
  ('The Walking Dead', '2010-10-31', 11),
  ('The Americans', '2013-01-30', 6),
  ('Homeland', '2011-10-02', 8),
  ('True Detective', '2014-01-12', 3),
  ('Fargo', '2014-04-15', 4),
  ('Striking Out', '2017-01-01', 4),
  ('The Young Offenders', '2018-02-01', 3),
  ('Derry Girls', '2018-01-04', 2),
  ('Normal People', '2020-04-26', 1),
  ('Love/Hate', '2010-10-03', 5),
  ('Peaky Blinders', '2013-09-12', 6),
  ('Line of Duty', '2012-06-26', 6),
  ('Black Mirror', '2011-12-04', 5),
  ('The Fall', '2013-05-12', 3),
  ('Killing Eve', '2018-04-08', 4),
  ('Sherlock', '2010-07-25', 4);
  
select *
from tv_shows