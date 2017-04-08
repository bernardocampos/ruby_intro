class ProgramsController < ApplicationController
  def home
    # Your code goes below.
    my_birthday = Time.parse("February 16, 1989")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday
    minutes_since_i_was_born = seconds_since_i_was_born/60
    hours_since_i_was_born = seconds_since_i_was_born/60/60
    days_since_i_was_born = hours_since_i_was_born/24

    @your_output = seconds_since_i_was_born.round
    @your_output2 = minutes_since_i_was_born.round
    @your_output3 = hours_since_i_was_born.round
    @your_output4 = days_since_i_was_born.round

    @first_name = "Bernardo"
    @last_name = "Brennand Campos"
    @d_o_b = "February 16, 1989"
    @marital_status = "married"
    @children = "1"
    @hometown = "Recife, Brazil"

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    # house_score = 0 apparently this is not possible yet
    # challenger_score = 0

    rock_paper_scissors_number = rand(3)

    if rock_paper_scissors_number == 2
      rock_paper_scissors_object = "Rock"
    elsif rock_paper_scissors_number == 1
      rock_paper_scissors_object = "Paper"
    else
      rock_paper_scissors_object = "Scissors"
    end

    challenger_object = "Rock"

    if rock_paper_scissors_object == "Rock"
      outcome_message = "Tie"
    elsif rock_paper_scissors_object == "Paper"
      outcome_message = "House wins!"
    else
      outcome_message = "Challenger wins!"
    end

    # if outcome_message == "Challenger wins!"
    #   challenger_score = challenger_score+1
    # elsif outcome_message == "House wins!"
    #   house_score = house_score+1
    # end

    @your_output1 = "House picks " + rock_paper_scissors_object
    @your_output2 = "Challenger picks " + challenger_object
    @your_output3 = "Result: " + outcome_message
    # @your_output4 = house_score
    # @your_output5 = challenger_score

    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    our_numbers = [4, 10, 6]        # Create an array of numbers
    squared_numbers = []            # Create an empty array

    our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      square = num * num            # Square the number
      squared_numbers.push(square)  # Push it into the squared_numbers array
    end

    @your_output = squared_numbers.sum  # Sum the squares

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a
    multiples_of_3_and_5 = []

    numbers.each do |num|
      if num % 3 == 0 || num % 5 == 0
        multiples_of_3_and_5.push(num)
      end
    end

    @your_output = multiples_of_3_and_5.sum

    render("programs/third_program.html.erb")
  end
end
