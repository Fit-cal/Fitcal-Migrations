/* Creates meal type table if it doesn't exit */
CREATE TABLE IF NOT EXISTS meal_types(
    meal_type_id INT(3) NOT NULL UNIQUE,
    meal_type INT(3) NOT NULL,
    PRIMARY KEY(meal_type_id)
)