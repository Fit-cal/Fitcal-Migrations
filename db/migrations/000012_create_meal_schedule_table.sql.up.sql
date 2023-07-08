/* Creates meal schedule session table if it doesn't exist */
CREATE TABLE IF NOT EXISTS meal_schedule(
    meal_schedule_id VARCHAR(256) NOT NULL UNIQUE,
    user_id VARCHAR(256) NOT NULL,
    meal_datetime TIMESTAMP,
    meal_type VARCHAR(40) NOT NULL,
    meal_id VARCHAR(256) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(meal_schedule_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(meal_id) REFERENCES meals(meal_id)
);