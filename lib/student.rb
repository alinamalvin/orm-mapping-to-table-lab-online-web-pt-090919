class Student
    attr_accessor :name, :grade
    
    def initialize(name, grade, id=nil)
    @id = id
    @name = name
    @album = album
  end
  
  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS songs (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade INTEGER
        )
        SQL
    DB[:conn].execute(sql) 
    
    def self.
  end
end 

