# rubocop:disable Style/GuardClause

module UsersHelper
  def timer(creator, user, c_date, lol)
    if creator == user
      if c_date > Time.zone.now
        nil
      else
        lol
      end
    end
  end

  def timer2(creator, user, c_date, lol)
    lol if creator == user && c_date > Time.zone.now
  end

  def if_nil(lol)
    array = []
    lol.each do |meme|
      array.push(meme) unless meme.nil?
    end
    array
  end
end

# rubocop:enable Style/GuardClause
