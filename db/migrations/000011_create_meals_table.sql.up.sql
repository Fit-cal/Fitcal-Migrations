/* Creates meals session table if it doesn't exist */
CREATE TABLE IF NOT EXISTS meals(
    meal_id VARCHAR(256) NOT NULL UNIQUE,
    meal_type_id INT(3) NOT NULL,
    meal_ingrident_id INT(3) NOT NULL,
    meal_name VARCHAR(40) NOT NULL,
    instructions VARCHAR(256) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(meal_id),
    FOREIGN KEY(meal_type_id) REFERENCES meal_types(meal_type_id),
    FOREIGN KEY(meal_ingrident_id) REFERENCES meal_ingridents(meal_ingrident_id)
);