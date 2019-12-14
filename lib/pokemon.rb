class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(name:, type:, id:, db:)#, hp: nil)
    @name = name
    @type = type
    @id = id
  #  @hp = hp
    @db = db
  end

end
