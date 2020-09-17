# README

Test the usage of caching system by Ruby 2.7.0 ,Rails 6.0.3.3

## Prerequesite

Have Redis server installed/running locally.

## Models

`Author` has many `Books`.

## Testing

- Check the current caching system in Rails console

  ```ruby
  ActionController::Base.cache_store
  ActionController::Base.cache_store.class
  #=> ActiveSupport::Cache::NullStore

  Rails.cache
  #=> <#ActiveSupport::Cache::RedisCacheStore options={:namespace=>nil, :compress=>true, :compress_threshold=>1024, :expires_in=>nil, :race_condition_ttl=>nil} redis=#<Redis client v4.2.2 for redis://127.0.0.1:6379/0>>
  ```

- Check the keys

  ```ruby
  Rails.cache.redis.keys
  ```

- Confirm caching system working:
  - Setup and seed database: `rails db:setup`
  - Run `rails server`
  - Connect to the root page and refresh browser, observe the server output to see if redundant SQL query is cached by Redis server.
