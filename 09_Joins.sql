/*
| Join Type      | What It Shows                                                                     |
| -------------- | --------------------------------------------------------------------------------- |
| INNER JOIN     | Only rows where users and addresses match (common in both tables)                 |
| LEFT JOIN      | All users, even if they have no address (address fields = NULL)                   |
| RIGHT JOIN     | All addresses, even if there is no user record for that address (user = NULL)     |
*/

-- 📂 Use the 'startersql' database
USE startersql;

-- 🔗 INNER JOIN: Only users with matching addresses
SELECT *
	FROM users
    INNER JOIN addresses ON users.id = addresses.user_id;

-- 🔗 LEFT JOIN: All users, even those without addresses
SELECT users.id, users.name, users.email, addresses.user_id, addresses.street, addresses.city
	FROM users
    LEFT JOIN addresses ON users.id = addresses.user_id;

-- 🔗 RIGHT JOIN: All addresses, even those without a matching user
SELECT users.id, users.name, users.email, addresses.user_id, addresses.street, addresses.city
	FROM users
    RIGHT JOIN addresses ON users.id = addresses.user_id;
