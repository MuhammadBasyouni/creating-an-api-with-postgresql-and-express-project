Create Table If Not Exists users (
  id Serial Primary key Not Null,
  firstName VarChar Not Null,
  lastName VarChar Not Null,
  password Text Not Null
);