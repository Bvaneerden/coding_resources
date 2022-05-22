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
  password_digest TEXT
  role TEXT,
);

ALTER TABLE users add column role TEXT;

UPDATE users SET name = 'Bree', email = 'breevaneerden@outlook.com', password = '$2a$12$kBwwZ.AerMUxRG.0xSa4kuU5dP3ptcFtLX4E.m4Sb8wMClRQZmeYS', role = 'admin' WHERE id = 1;

-- -- likes
-- -- define foreign key
-- CREATE TABLE recommendations(
--   id SERIAL PRIMARY KEY,
--   user_id INTEGER,
--   resources_id INTEGER,
-- );

INSERT INTO resources(name, description, url, html, css, javascript, ruby, ruby_on_rails, postgresql, python) VALUES('Grasshopper', 'Welcome to Grasshopper the coding app for beginners', 'https://grasshopper.app/', 'true', 'true', 'true', 'false', 'false', 'false', 'false'), ('General Assembly', 'Prework for beginners', 'https://generalassemb.ly/', 'true', 'true', 'true', 'false', 'false', 'false', 'false'), ('Speedcoder', 'Practice typing code in Javascript, Ruby and other languages.','http://speedcoder.herokuapp.com/', 'false', 'false', 'true', 'true', 'false', 'false', 'false'), ('MDN', 'Array methods', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array', 'false', 'false', 'true', 'false', 'false', 'false', 'false'), ('MDN', 'Documenting web technologies, including CSS, HTML, and JavaScript, since 2005', 'https://developer.mozilla.org/en-US/', 'true', 'true', 'true', 'false', 'false', 'false', 'false'), ('Flexbox Froggy', 'Game to learn CSS flexbox','https://flexboxfroggy.com/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('Grid Garden', 'Game to learn CSS grid', 'https://cssgridgarden.com/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('CSS-Tricks', 'A Complete Guide to Flexbox', 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('CSS-Tricks', 'A Complete Guide to Grid', 'https://css-tricks.com/snippets/css/complete-guide-grid/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('Media queries', 'CSS - media queries', 'https://mediaqueri.es/', 'false', 'false', 'true', 'false', 'false', 'false', 'false'), ('W3schools', 'CSS - media queries', 'https://www.w3schools.com/css/tryit.asp?filename=tryresponsive_mediaquery', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('Carousel', 'A slideshow component for cycling through elements—images or slides of text—like a carousel.', 'https://getbootstrap.com/docs/5.1/components/carousel/', 'false', 'true', 'true', 'false', 'false', 'false', 'false'), ('Ruby docs', 'Array methods', 'https://ruby-doc.org/core-2.7.0/Array.html', 'false', 'false', 'false', 'true', 'false', 'false', 'false'), ('Code wars', '', 'https://www.codewars.com/', 'false', 'false', 'true', 'true', 'false', 'true', 'true');


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

INSERT INTO sei53(name, linkedin, image, github, project1, project2) VALUES('Alicia Bang', 'https://www.linkedin.com/in/alicia-bang/', 'https://media-exp1.licdn.com/dms/image/C4E03AQFa2vGo7qv2NQ/profile-displayphoto-shrink_800_800/0/1653006219580?e=1658966400&v=beta&t=EOi6BsgZpxjsSvBfqkDfXmaNmoe2lUk1HdFTQv2W0wk', 'https://github.com/bmji', 'https://bmji.github.io/tic-tac-toe/', 'https://whispering-hollows-57896.herokuapp.com/'), ('Andrea Lazari', 'https://www.linkedin.com/in/andrealazari/', 'https://media-exp1.licdn.com/dms/image/C5603AQH6E7Z-PCQY-Q/profile-displayphoto-shrink_800_800/0/1651824936594?e=1658966400&v=beta&t=Y1GL1itJNQ_oRIHYvW8EbnI1ReCN5qzvIunDoOPGnVg', 'https://github.com/andrealazari', 'https://andrealazari.github.io/tic-tac-toe/', 'https://my-brewery-app.herokuapp.com/'), ('Bree Van Eerden', 'https://www.linkedin.com/in/breevaneerden/', 'https://media-exp1.licdn.com/dms/image/C5603AQEK9TvzLKPbLA/profile-displayphoto-shrink_800_800/0/1652156978703?e=1658966400&v=beta&t=xh0tX2iSwvM3O_AabGyL64kLqicnT4KEw9FJgAuV2so', 'https://github.com/Bvaneerden', 'https://bschampion.github.io/TicTacToe/', 'https://coding-resources-sei53.herokuapp.com/'), ('Geoffrey Sizgoric', 'https://www.linkedin.com/in/geoffrey-sizgoric/,', 'https://media-exp1.licdn.com/dms/image/C5103AQGIFHRo6vvK0g/profile-displayphoto-shrink_800_800/0/1521756285907?e=1658966400&v=beta&t=URPOBOmXPFntde7Ilr8SueAdAkz-tDj4hIaTiZrnYLw', 'https://github.com/Geoph88', 'https://geoph88.github.io/tic-tac-toe/', 'https://still-sands-56902.herokuapp.com/'), ('James Mein', 'https://www.linkedin.com/in/jamesmein/','https://media-exp1.licdn.com/dms/image/C4D03AQGe4kRbk7J0Vw/profile-displayphoto-shrink_800_800/0/1652155680404?e=1658966400&v=beta&t=ySEMezCcqYX7Uk6Ze7OMz_jppwD0UevAgX8y5ixfbJQ', 'https://github.com/JimmyMein', 'https://jimmymein.github.io/tic-tac-toe/', 'https://sheltered-forest-89646.herokuapp.com/'), ('Karina Santana', 'https://www.linkedin.com/in/karinasantanadasilva/', 'https://media-exp1.licdn.com/dms/image/C4D03AQH3XXDyqrcDVQ/profile-displayphoto-shrink_800_800/0/1537278845414?e=1658966400&v=beta&t=l5t6kCOA6yyEoGcInmeJFvM72EMcMkgmi3IEvzB1_Mk', 'https://github.com/Karina-Santana', 'https://karina-santana.github.io/tic-tac-toe/', 'https://nameless-mountain-77703.herokuapp.com/'), ('Katherine Duong', 'https://www.linkedin.com/in/katherineduong/', 'https://media-exp1.licdn.com/dms/image/C5603AQF4Tevxnpspfg/profile-displayphoto-shrink_800_800/0/1573892213005?e=1658966400&v=beta&t=2SYWMlXDmkSSt1cfb2arkOQz7OpHxZoVs0wuYQHf2Ao', 'https://github.com/kduong888', 'https://kduong888.github.io/tic-tac-toe/', 'https://good-shyte.herokuapp.com/'), ('Kenny', 'https://www.linkedin.com/in/dev-kenny/', 'https://media-exp1.licdn.com/dms/image/C4D03AQGTygLV-Gbvjw/profile-displayphoto-shrink_800_800/0/1652749663513?e=1658966400&v=beta&t=a2X5Xnoy2EmLhB-WT5FgIjk47Gw2UNXBa2MrGoAlvps', 'https://github.com/Kenny-136', 'https://kenny-136.github.io/tic-tac-toe/', 'https://floating-tor-64492.herokuapp.com/'), ('Marcus Adams', 'https://www.linkedin.com/in/marcus-g-adams/', 'https://media-exp1.licdn.com/dms/image/C5603AQHxmvVA86mx9A/profile-displayphoto-shrink_800_800/0/1651551506234?e=1658966400&v=beta&t=-eCDNE1J-3Bp35BkXuh2IT28oj1jrB0NV7NcVcbzsG4', 'https://github.com/MarcusAdams1220', 'https://marcusadams1220.github.io/tic-tac-toe/', 'https://sheltered-everglades-43597.herokuapp.com/'), ('Marcus Loy', 'https://www.linkedin.com/in/marcus-loy/', 'https://media-exp1.licdn.com/dms/image/C5603AQFJAY0UTuOwRg/profile-displayphoto-shrink_800_800/0/1651555105664?e=1658966400&v=beta&t=dwcU4sf1xMtmS5I4eImkySgr2WgGwvygAAqX7xeRVCM', 'https://github.com/marcusloy77', 'https://marcusloy77.github.io/tic-tac-toe/', 'https://ancient-brook-21026.herokuapp.com/'), ('Neal (Fengyu) Zhang', 'https://www.linkedin.com/in/fengyuzhang/', 'data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7', 'https://github.com/ciaociaoworld', 'https://ciaociaoworld.github.io/tic-tac-toe/', 'https://warm-fjord-40981.herokuapp.com/'), ('Pablo Alvarez Imaz', 'https://www.linkedin.com/in/pabloalvarezimaz/', 'https://media-exp1.licdn.com/dms/image/C5603AQGojL4GtmMPYw/profile-displayphoto-shrink_800_800/0/1650952656669?e=1658966400&v=beta&t=vL5X3jJfFwq-qpbZM9HxDvB9c7xb-_lccA1ZbuuD73Q',  'https://github.com/Ikilzig', 'https://ikilzig.github.io/tic-tac-toe/', 'https://deadcryptos.herokuapp.com/'), ('Rosalin Biswal', 'https://www.linkedin.com/in/dev-rosalin-biswal/', 'https://media-exp1.licdn.com/dms/image/C4D03AQGSZFzH1kOavw/profile-displayphoto-shrink_800_800/0/1651548497628?e=1658966400&v=beta&t=FKwRHQT4xB-JmP6S0Z3fI1pvj4I8rI2tXAncROttawA', 'https://github.com/rosalinb', 'https://rosalinb.github.io/tic-tac-toe', 'https://findaproperty.herokuapp.com/');

















