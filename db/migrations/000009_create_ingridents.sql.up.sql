/* Creates ingridents table if it doesn't exit */
CREATE TABLE IF NOT EXISTS ingridents(
    ingrident_id INT(40) NOT NULL UNIQUE,
    ingrident_name VARCHAR(40) NOT NULL,
    PRIMARY KEY(ingrident_id)
)