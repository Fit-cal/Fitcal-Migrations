/* creates schedule workout table if it does not exists */
CREATE TABLE IF NOT EXISTS schedule_workout(
    schedule_id VARCHAR(256) NOT NULL UNIQUE,
    user_id VARCHAR(256) NOT NULL,
    workout_datetime TIMESTAMP NOT NULL,
    workout_type VARCHAR(40) NOT NULL,/* have to think if i should have a different table for storing types of excercises but for now just normal string should do */
    notes VARCHAR(256),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(schedule_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
)
