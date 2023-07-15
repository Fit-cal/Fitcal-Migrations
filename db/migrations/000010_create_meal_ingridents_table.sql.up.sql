/* Creates meal ingridents session table if it doesn't exist */
CREATE TABLE IF NOT EXISTS meal_ingridents(
    meal_ingrident_id INT(3) NOT NULL UNIQUE,
    meal_id INT(3) NOT NULL,
    ingrident_id INT(3) NOT NULL,
    PRIMARY KEY(meal_ingrident_id),
    FOREIGN KEY(ingrident_id) REFERENCES ingridents(ingrident_id)
);