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


-- Alter TABLE resources ADD COLUMN python BOOLEAN;
-- ;


CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);

-- likes
-- define foreign key
CREATE TABLE recommendations(
    user_id INTEGER,
    resources_id INTEGER,
);

INSERT INTO resources(name, description, url, html, css, javascript, ruby, ruby_on_rails, postgresql, python) VALUES('Grasshopper', 'Welcome to Grasshopper the coding app for beginners', 'https://grasshopper.app/', 'true', 'true', 'true', 'false', 'false', 'false', 'false'), ('General Assembly', 'Prework for beginners', 'https://generalassemb.ly/', 'true', 'true', 'true', 'false', 'false', 'false', 'false'), ('Speedcoder', 'Practice typing code in Javascript, Ruby and other languages.','http://speedcoder.herokuapp.com/', 'false', 'false', 'true', 'true', 'false', 'false', 'false'), ('MDN', 'Array methods', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array', 'false', 'false', 'true', 'false', 'false', 'false', 'false'), ('MDN', 'Documenting web technologies, including CSS, HTML, and JavaScript, since 2005', 'https://developer.mozilla.org/en-US/', 'true', 'true', 'true', 'false', 'false', 'false', 'false'), ('Flexbox Froggy', 'Game to learn CSS flexbox','https://flexboxfroggy.com/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('Grid Garden', 'Game to learn CSS grid', 'https://cssgridgarden.com/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('CSS-Tricks', 'A Complete Guide to Flexbox', 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/', 'false', 'true', 'false', 'false', 'false', 'false', 'false'), ('CSS-Tricks', 'A Complete Guide to Grid', 'https://css-tricks.com/snippets/css/complete-guide-grid/', 'false', 'true', 'false', 'false', 'false', 'false', 'false');


-- SELECT * FROM resources;


-- Alter TABLE resources ADD COLUMN ruby BOOLEAN;
