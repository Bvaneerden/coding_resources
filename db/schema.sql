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


Alter TABLE resources ADD COLUMN python BOOLEAN;
;

-- languages

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


INSERT INTO resources(name, description, url) VALUES('Grasshopper', 'Welcome to Grasshopper the coding app for beginners', 'https://grasshopper.app/'), ('General Assembly', 'Prework for beginners', 'https://generalassemb.ly/'), ('Speedcoder', 'Practice typing code in Javascript, Ruby and other languages.','http://speedcoder.herokuapp.com/'), ('MDN resourses for Developers', 'Array methods', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array'), ('MDN resourses for Developers', 'Documenting web technologies, including CSS, HTML, and JavaScript, since 2005', 'https://developer.mozilla.org/en-US/'), ('Flexbox Froggy', 'Game to learn CSS flexbox','https://flexboxfroggy.com/'), ('Grid Garden', 'Game to learn CSS grid', 'https://cssgridgarden.com/'), ('CSS-Tricks', 'A Complete Guide to Flexbox', 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/'), ('CSS-Tricks', 'A Complete Guide to Grid', 'https://css-tricks.com/snippets/css/complete-guide-grid/');


-- SELECT * FROM resources;


-- Alter TABLE resources ADD COLUMN ruby BOOLEAN;
