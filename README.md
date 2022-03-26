# Storefront Backend Project

The database schema and and API route information can be found in the [REQUIREMENT.md](./REQUIREMENTS.md)

## Used Technologies
Your application must make use of the following libraries:
- Postgres for the database
- Node/Express for the application logic
- dotenv from npm for managing environment variables
- db-migrate from npm for migrations
- jsonwebtoken from npm for working with JWTs
- jasmine from npm for testing

## Settint Up

At first you need to create 2 local databases:

- storefront (for development)
- storefront_test (for testing)

The migrations are applied automatically when running tests or the server

Then after that run `npm i` to download dependencies

### ENVs

Make sure that you have a `.env` file in the root directory of the project similar to this

```env
PG_HOST='127.0.0.1'
PG_DB='storefront'
PG_TEST_DB='storefront_test'
PG_USER='your-username'
PG_PASSWD='your-password'
BCRYPT_PASSWORD='bcrypt-password'
SALT_ROUNDS=10
ENV='dev'
TOKEN_SECRET='secret-token'
```

## Scripts

Use with `npm run`:

- `dev` to start the server in development stage (just remember after closing them drop the databases and create them again, most errors I faced was because of this :D)

- `start` to start the server in "production mode"

- `test` to run tests

- [`format`, `lint`, `lint:fix`] for formatting && linting

## Notes

- Tokens are created when a user is created
- There is no use of an Authorization header
