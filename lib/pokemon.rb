class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(name:, type:, id:, db:)
    @name = name
    @type = type
    @id = id
    @db = db
  end

end
