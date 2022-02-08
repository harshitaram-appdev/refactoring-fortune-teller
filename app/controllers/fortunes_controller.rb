class FortunesController < ApplicationController

  def horoscopes
    @specific = params.fetch("the_sign")
    sym = @specific.to_sym
    all_zodiacs = Zodiac.list
  this_zodiac = all_zodiacs.fetch(sym)
  @horoscope = this_zodiac.fetch(:horoscope)

  @nums = Zodiac.lucky_numbers

    render({ :template => "flame_templates/all.html.erb" })
  end


end