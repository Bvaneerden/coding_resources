CREATE DATABASE coding_resources;
\c coding_resources

CREATE TABLE resources (
  id SERIAL PRIMARY KEY,
  name TEXT,
  description TEXT,
  languages TEXT,
  url TEXT,
  html BOOLEAN,
  css BOOLEAN,
  javascript BOOLEAN,
  ruby BOOLEAN,
  ruby_on_rails BOOLEAN,
  postgresql BOOLEAN,
  python BOOLEAN
);

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name TEXT,
  email TEXT,
  password_digest TEXT,
  role TEXT
);

INSERT INTO users (name, email, password_digest, role) VALUES ('Bree', 'breevaneerden@outlook.com', '$2a$12$kBwwZ.AerMUxRG.0xSa4kuU5dP3ptcFtLX4E.m4Sb8wMClRQZmeYS', 'admin');

INSERT INTO users (name, email, password_digest) VALUES ('ros',  'ros', '$2a$12$FzAXEPSmPow8rj7J.3fvR.weZbd.9snIMYN2Cu9V6pdd78m8IB3hq'), ('neil', 'neiltarar@gmail.com', '$2a$12$vxmf9z4JBx7g1Onu0TDd9.AK7YF2WBx42VYeJF.0OxzWLYE1acerq'), ('tester', 'tester', '$2a$12$39btjU.g7F4z/gBYP4lV5urDTq0fmYCfp6.bO0bLqywy./vkxtaPq');



-- -- likes
-- -- define foreign key
-- CREATE TABLE recommendations(
--   id SERIAL PRIMARY KEY,
--   user_id INTEGER,
--   resources_id INTEGER,
-- );

INSERT INTO resources(name, description, url, html, css, javascript, ruby, ruby_on_rails, postgresql, python) VALUES('Grasshopper', 'Welcome to Grasshopper the coding app for beginners', 'https://grasshopper.app/', 'true', 'true', 'true', 'false', 'false', 'false', 'false'), ('General Assembly', 'Prework for beginners', 'https://generalassemb.ly/', 'true', 'true', 'true', 'false', 'false', 'false', 'false'), ('Speedcoder', 'Practice typing code in Javascript, Ruby and other languages.','http://speedcoder.herokuapp.com/', 'false', 'false', 'true', 'true', 'false', 'false', 'false'), ('MDN', 'Array methods', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array', 'false', 'false', 'true', 'false', 'false', 'false', 'false'), ('MDN', 'Documenting web technologies, including CSS, HTML, and JavaScript, since 2005', 'https://developer.mozilla.org/en-US/', 'true', 'true', 'true', 'false', 'false', 'false', 'false'), ('Flexbox Froggy', 'Game to learn CSS flexbox','https://flexboxfroggy.com/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('Grid Garden', 'Game to learn CSS grid', 'https://cssgridgarden.com/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('CSS-Tricks', 'A Complete Guide to Flexbox', 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('CSS-Tricks', 'A Complete Guide to Grid', 'https://css-tricks.com/snippets/css/complete-guide-grid/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('Media queries', 'CSS - media queries', 'https://mediaqueri.es/', 'false', 'false', 'true', 'false', 'false', 'false', 'false'), ('W3schools', 'CSS - media queries', 'https://www.w3schools.com/css/tryit.asp?filename=tryresponsive_mediaquery', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('Carousel', 'A slideshow component for cycling through elements—images or slides of text—like a carousel.', 'https://getbootstrap.com/docs/5.1/components/carousel/', 'false', 'true', 'true', 'false', 'false', 'false', 'false'), ('Ruby docs', 'Array methods', 'https://ruby-doc.org/core-2.7.0/Array.html', 'false', 'false', 'false', 'true', 'false', 'false', 'false'), ('Code wars', '', 'https://www.codewars.com/', 'false', 'false', 'true', 'true', 'false', 'true', 'true');

DROP TABLE sei53;

CREATE TABLE sei53 (
  id SERIAL PRIMARY KEY,
  name TEXT,
  linkedin TEXT,
  image TEXT,
  github TEXT,
  project1 TEXT,
  project2 TEXT,
  project3 TEXT,
  project4 TEXT
);

INSERT INTO sei53(name, linkedin, image, github, project1, project2) VALUES

('Alicia Bang', 'https://www.linkedin.com/in/alicia-bang/', '/images/Alicia.jpeg', 'https://github.com/bmji', 'https://bmji.github.io/tic-tac-toe/', 'https://whispering-hollows-57896.herokuapp.com/'), 

('Andrea Lazari', 'https://www.linkedin.com/in/andrealazari/', '/images/Andrea Lazari .jpeg', 'https://github.com/andrealazari', 'https://andrealazari.github.io/tic-tac-toe/', 'https://my-brewery-app.herokuapp.com/'), 

('Bree Van Eerden', 'https://www.linkedin.com/in/breevaneerden/', '/images/Bree Van Eerden.jpeg', 'https://github.com/Bvaneerden', 'https://github.com/Bvaneerden/TicTacToe', 'https://coding-resources-sei53.herokuapp.com/'), 

('Geoffrey Sizgoric', 
'https://www.linkedin.com/in/geoffrey-sizgoric/', '/images/Geoff Sizgoric.jpeg', 'https://github.com/Geoph88', 'https://geoph88.github.io/tic-tac-toe/', 'https://still-sands-56902.herokuapp.com/'), 
('James Mein', 'https://www.linkedin.com/in/jamesmein/','/images/James Mein.jpeg', 'https://github.com/JimmyMein', 'https://jimmymein.github.io/tic-tac-toe/', 'https://sheltered-forest-89646.herokuapp.com/'), 

('Karina Santana', 'https://www.linkedin.com/in/karinasantanadasilva/', '../images/Karina Santana.jpeg', 'https://github.com/Karina-Santana', 'https://karina-santana.github.io/tic-tac-toe/', 'https://nameless-mountain-77703.herokuapp.com/'), ('Katherine Duong', 'https://www.linkedin.com/in/katherineduong/', '../images/Katherine Duong.jpeg', 'https://github.com/kduong888', 'https://kduong888.github.io/tic-tac-toe/', 'https://good-shyte.herokuapp.com/'), ('Kenny', 'https://www.linkedin.com/in/dev-kenny/', '/images/Kenny Kenny.jpeg', 'https://github.com/Kenny-136', 'https://kenny-136.github.io/tic-tac-toe/', 'https://floating-tor-64492.herokuapp.com/'), ('Marcus Adams', 'https://www.linkedin.com/in/marcus-g-adams/', '../images/Marcus Adams.jpeg', 'https://github.com/MarcusAdams1220', 'https://marcusadams1220.github.io/tic-tac-toe/', 'https://sheltered-everglades-43597.herokuapp.com/'), 
('Marcus Loy', 'https://www.linkedin.com/in/marcus-loy/', '../images/Marcus Loy.jpeg', 'https://github.com/marcusloy77', 'https://marcusloy77.github.io/tic-tac-toe/', 'https://ancient-brook-21026.herokuapp.com/'), ('Neal (Fengyu) Zhang', 'https://www.linkedin.com/in/fengyuzhang/', 'data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7', 'https://github.com/ciaociaoworld', 'https://ciaociaoworld.github.io/tic-tac-toe/', 'https://warm-fjord-40981.herokuapp.com/'), 

('Pablo Alvarez Imaz', 'https://www.linkedin.com/in/pabloalvarezimaz/', '../images/Pablo Alvarez Imaz.jpeg',  'https://github.com/Ikilzig', 'https://ikilzig.github.io/tic-tac-toe/', 'https://deadcryptos.herokuapp.com/cryptos'), ('Rosalin Biswal', 'https://www.linkedin.com/in/dev-rosalin-biswal/', '../images/Rosalin Biswal.jpeg', 'https://github.com/rosalinb', 'https://rosalinb.github.io/tic-tac-toe', 'https://findaproperty.herokuapp.com/');
