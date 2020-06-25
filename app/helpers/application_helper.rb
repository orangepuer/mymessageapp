module ApplicationHelper
  def date_to_formatted date
    days_of_week = { 1 => 'Пн', 2 => 'Вт', 3 => 'Ср', 4 => 'Чт', 5 => 'Пт', 6 => 'Сб', 0 => 'Вс', }
    "#{date.strftime('%d.%m.%Y')} #{days_of_week[date.strftime('%w').to_i]}, #{date.strftime('%H:%M')}"
  end

  # def date_to_formatted date
  #   days_of_week = { 1 => 'Пн', 2 => 'Вт', 3 => 'Ср', 4 => 'Чт', 5 => 'Пт', 6 => 'Сб', 0 => 'Вс', }
  #   date.strftime("%d.%m.%Y %w %H:%M").gsub(/ [0-6] /) { |day| " #{days_of_week[day.to_i]}, " }
  # end
end
