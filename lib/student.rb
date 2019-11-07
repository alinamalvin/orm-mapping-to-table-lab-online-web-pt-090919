class Student
    attr_accessor :name, :grade, :id 
    
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
    
    def self.drop_table
      DB[:conn].execute("DROP TABLE IF EXISTS students")
  end
      
      def save
    sql = <<-SQL
      INSERT INTO students (name, grade) 
      VALUES (?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.grade)
 
  end
end 

