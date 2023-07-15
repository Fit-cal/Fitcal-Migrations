/* Creates resistance session table if it doesn't esist */
CREATE TABLE IF NOT EXISTS resistance_session(
    resistance_id VARCHAR(256) NOT NULL UNIQUE,
    user_id VARCHAR(256) NOT NULL,
    excercise VARCHAR(100) NOT NULL,
    reps INT(2) NOT NULL,
    sets INT(2) NOT NULL,
    weight INT(3) NOT NULL,
    notes VARCHAR(256) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(resistance_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);