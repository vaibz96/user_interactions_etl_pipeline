-- Create the user_interactions table
CREATE TABLE user_interactions (
    interaction_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    action VARCHAR(50),
    timestamp TIMESTAMP NOT NULL
);

-- Load data from CSV file
COPY user_interactions(interaction_id, user_id, product_id, action, timestamp)
FROM 'C:/Users/your_path/interactions_data.csv' DELIMITER ',' CSV HEADER;

select * from user_interactions;

