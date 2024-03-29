/* Creates scheduled session table if it does'n exist */
CREATE TABLE IF NOT EXISTS scheduled_session(
    planned_id VARCHAR(256) NOT NULL UNIQUE,
    user_id VARCHAR(256) NOT NULL,
    type VARCHAR(10) NOT NULL,
    start_datetime TIMESTAMP NOT NULL,
    end_datetime TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(planned_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);