CREATE TABLE [User] (
  [user_id] uuid UNIQUE PRIMARY KEY,
  [first_name] nvarchar(255) NOT NULL,
  [last_name] nvarchar(255) NOT NULL,
  [email] nvarchar(255) UNIQUE NOT NULL,
  [password_hash] nvarchar(255) NOT NULL,
  [phone_number] nvarchar(255),
  [role] enum(guest,host,admin) NOT NULL,
  [created_at] timestamp DEFAULT (now())
)
GO

CREATE TABLE [Property] (
  [property_id] uuid UNIQUE PRIMARY KEY,
  [host_id] uuid,
  [name] nvarchar(255) NOT NULL,
  [description] text NOT NULL,
  [location] nvarchar(255) NOT NULL,
  [pricepernight] decimal NOT NULL,
  [created_at] timestamp DEFAULT (now()),
  [updated_at] timestamp DEFAULT (now())
)
GO

CREATE TABLE [Booking] (
  [booking_id] uuid UNIQUE PRIMARY KEY,
  [property_id] uuid,
  [user_id] uuid,
  [start_date] date NOT NULL,
  [end_date] date NOT NULL,
  [total_price] decimal NOT NULL,
  [status] enum(pending,confirmed,canceled) NOT NULL,
  [created_at] timestamp DEFAULT (now())
)
GO

CREATE TABLE [Payment] (
  [payment_id] uuid UNIQUE PRIMARY KEY,
  [booking_id] uuid,
  [amount] decimal NOT NULL,
  [payment_date] date NOT NULL,
  [payment_method] enum(credit_card,paypal,stripe) NOT NULL
)
GO

CREATE TABLE [Review] (
  [review_id] uuid UNIQUE PRIMARY KEY,
  [property_id] uuid,
  [user_id] uuid,
  [rating] integer(1,2,3,4,5) NOT NULL,
  [comment] text NOT NULL,
  [created_at] timestamp DEFAULT (now())
)
GO

CREATE TABLE [Message] (
  [message_id] uuid UNIQUE PRIMARY KEY,
  [sender_id] uuid,
  [recipient_id] uuid,
  [message_body] text NOT NULL,
  [sent_at] timestamp DEFAULT (now())
)
GO

CREATE INDEX [User_index_0] ON [User] ("user_id")
GO

CREATE UNIQUE INDEX [User_index_1] ON [User] ("email")
GO

CREATE INDEX [Property_index_2] ON [Property] ("property_id")
GO

CREATE INDEX [Booking_index_3] ON [Booking] ("booking_id")
GO

CREATE INDEX [Booking_index_4] ON [Booking] ("property_id")
GO

CREATE INDEX [Payment_index_5] ON [Payment] ("payment_id")
GO

CREATE INDEX [Payment_index_6] ON [Payment] ("booking_id")
GO

CREATE INDEX [Review_index_7] ON [Review] ("review_id")
GO

ALTER TABLE [Property] ADD FOREIGN KEY ([host_id]) REFERENCES [User] ([user_id])
GO

ALTER TABLE [Booking] ADD FOREIGN KEY ([property_id]) REFERENCES [Property] ([property_id])
GO

ALTER TABLE [Booking] ADD FOREIGN KEY ([user_id]) REFERENCES [User] ([user_id])
GO

ALTER TABLE [Payment] ADD FOREIGN KEY ([booking_id]) REFERENCES [Booking] ([booking_id])
GO

ALTER TABLE [Review] ADD FOREIGN KEY ([property_id]) REFERENCES [Property] ([property_id])
GO

ALTER TABLE [Review] ADD FOREIGN KEY ([user_id]) REFERENCES [User] ([user_id])
GO

ALTER TABLE [Message] ADD FOREIGN KEY ([sender_id]) REFERENCES [User] ([user_id])
GO

ALTER TABLE [Message] ADD FOREIGN KEY ([recipient_id]) REFERENCES [User] ([user_id])
GO
