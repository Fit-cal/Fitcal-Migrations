/* Creates user metrics table if exists */
CREATE TABLE IF NOT EXISTS user_metrics(
    user_metrics_id VARCHAR(256) NOT NULL UNIQUE,
    user_id VARCHAR(256) NOT NULL UNIQUE,
    height INT(3) NOT NULL,
    weight INT(3) NOT NULL,
    age INT(3) NOT NULL,
    gender VARCHAR(6) NOT NULL,
    bmi INT(3) NOT NULL,
    bmr INT(4) NOT NULL, -- BMR is the calorie needed to sustain basic bodily functions at rest
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT check_height_range CHECK (height BETWEEN 54 AND 280),
    CONSTRAINT check_weight_range CHECK (weight BETWEEN 2 AND 635),
    CONSTRAINT check_age_range CHECK (age BETWEEN 0 AND 125),
    CONSTRAINT check_bmi_range CHECK (bmi BETWEEN 6 AND 105),
    PRIMARY KEY(user_metrics_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);