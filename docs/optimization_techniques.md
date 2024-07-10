# Optimization Techniques

## 1. Indexing
Indexes could be created on the `user_id`, `product_id`, and `timestamp` columns to speed up queries that filter or sort by these columns.

## 2. Partitioning
Partitioning the table by `timestamp` can improve query performance for date-based queries.

## 3. Vacuum and Analyze
Running VACUUM and ANALYZE regularly helps maintain table statistics and ensures the query planner saves up-to-date information.
