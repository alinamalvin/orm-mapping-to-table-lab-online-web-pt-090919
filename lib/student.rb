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
 
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
  end
  
  def self.create(name:, grade:)
    Student.create_table
    mark = Song.new("Mark", "3")
 
    Mark.save
ninety_nine_problems.save
end 

