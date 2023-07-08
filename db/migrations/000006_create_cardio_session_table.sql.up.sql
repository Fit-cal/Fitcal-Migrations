/* Creates cardio session table if it doesn't exist */
CREATE TABLE IF NOT EXISTS cardio_session(
    cardio_id VARCHAR(256) NOT NULL UNIQUE,
    user_id VARCHAR(256) NOT NULL,
    excercise VARCHAR(100) NOT NULL,
    duration INT(3) NOT NULL,
    distance INT(3) NOT NULL,
    calories_burned INT(5) NOT NULL,
    notes VARCHAR(256) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(cardio_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);