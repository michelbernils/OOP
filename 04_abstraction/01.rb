# frozen_string_literal: true

# Database class
class DatabaseConnection
  def initialize(database_name:)
    @database_name = database_name
  end

  def execute(query)
    # Implementation details hidden from the user
    # ...
  end
end

db = DatabaseConnection.new(database_name: 'my_database')
db.execute("SELECT * FROM users")