module UsersHelper
  #  def timer(creator, user, c_date, lol)
  #    if creator == user
  #      if c_date > Time.zone.now
  #        nil
  #      else
  #        lol
  #      end
  #    end
  #  end
  #
  #  def timer2(creator, user, c_date, lol)
  #    lol if creator == user && c_date > Time.zone.now
  #  end
  #
  #  def if_nil(lol)
  #    array = []
  #    lol.each do |meme|
  #      array.push(meme) unless meme.nil?
  #    end
  #    array
  #  end

  def timer_e(c_date, lol)
    if c_date > Time.zone.now
      nil
    else
      lol
    end
  end

  def timer2_e(c_date, lol)
    lol if c_date > Time.zone.now
  end

  def if_nil(lol)
    array = []
    lol.each do |meme|
      array.push(meme) unless meme.nil?
    end
    array
  end
end
