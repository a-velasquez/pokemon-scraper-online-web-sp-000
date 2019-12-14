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
    pokemons = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new(id: pokemons[0], :name pokemons[1], :type pokemons[2], :db db)
  end

end
