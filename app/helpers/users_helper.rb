module UsersHelper
  def timer(creator, user, c_date, lol)
    if creator == user
      if c_date > Time.zone.now

      else
        return lol
      end
    else

    end
  end

  def timer2(creator, user, c_date, lol)
    if creator == user
      if c_date > Time.zone.now
        lol
      else

      end
    else

    end
  end

  def if_nil(lol)
    array = Array.new
    lol.each do |meme|
      if meme != nil
        array.push(meme)
      else

      end
    end
    return array
  end
end
