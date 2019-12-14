class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(name:, type:, id:, db:)
    @name = name
    @type = type
    @id = id
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES (?,?)", name, type)
  end

  def self.find(id, db)
    found_poke = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new(id: found_poke[0], :name found_poke[1], :type found_poke[2], :db db)
  end

end
