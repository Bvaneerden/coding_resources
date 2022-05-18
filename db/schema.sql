CREATE DATABASE coding_resources;
\c coding_resources

CREATE TABLE resources (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    languages TEXT,
    url TEXT
);

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


-- INSERT INTO resources(name, description, url) VALUES('Mercury', 'https://space-facts.com/wp-content/uploads/mercury-v2.jpg', 4879, 57909227, 88, 0.33* 10^24, 0), ('Venus', 'https://space-facts.com/wp-content/uploads/venus-v2.jpg', 12104, 108209475, 225, 	4.87* 10^24, 0), ('Earth', 'https://space-facts.com/wp-content/uploads/earth-v2.jpg', 12742, 149598262, 365.24, 5.97 * 10^24 , 1), ('Mars', 'https://space-facts.com/wp-content/uploads/mars-v2.jpg', 6779, 227943824, 1.9, 6.39 * 10^23, 2), ('Jupiter', 'https://space-facts.com/wp-content/uploads/jupiter-v2.jpg', 139822, 778340821, 11.9, 5.1* 10^27, 79), ('Saturn', 'https://space-facts.com/wp-content/uploads/saturn-v2.jpg', 116464, 1426666422, 29.5, 568* 10^24, 82), ('Uranus', 'https://space-facts.com/wp-content/uploads/uranus-v2.jpg', 50724, 2870658186, 84.0, 86.8* 10^24, 27), ('Neptune', 'https://space-facts.com/wp-content/uploads/neptune-v2.jpg', 49244, 4498396441, 164.8, 102* 10^24, 14);

-- SELECT * FROM planets;
