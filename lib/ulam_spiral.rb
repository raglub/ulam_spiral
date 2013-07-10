# encoding: utf-8
require "ulam_spiral/version"
require "prime"

class UlamSpiral

  attr_reader :spiral

  def initialize(params = {})
    @first_number = params[:first_number] || 1
    @last_number = params[:last_number] || 100
    @spiral = (0...square_length).to_a.map{ [nil] * (square_length) }
    @row = (square_length / 2.0).floor
    @column = ((square_length - 1) / 2.0).floor
    @spiral[@row][@column] = @first_number
  end

  # generate ulam spiral
  def generate_spiral
    direct = 2
    ((@first_number + 1)..@last_number).each do |number|
      @row, @column = get_position(direct)
      if Prime.prime?(number)
        @spiral[@row][@column] = number if Prime.prime?(number)
      else
        @spiral[@row][@column] = ""
      end

      x, y = get_position(direct + 1)
      direct = (direct + 1) % 4 if @spiral[x][y].nil?
    end
    string_to_nil
  end

  # Show on console spiral
  def show
    length = @last_number.to_s.length + 1
    @spiral.each do |row|
      puts "\n"
      puts row.map { |element| element.nil? ? " " * length : element.to_s.rjust(length, " ") }.join(" ")
    end
  end

  private

    def get_position(direct)
      case direct
      when 0
        return [@row, @column - 1]
      when 1
        return [@row + 1, @column]
      when 2
        return [@row, @column + 1]
      when 3
        return [@row - 1, @column]
      else
        return get_position(0)
      end
    end

    def string_to_nil
      @spiral.map! do |line|
        line.map{ |element| (element.eql?("") ? nil : element)}
      end
    end

    def square_length
      Math.sqrt(@last_number - @first_number + 1 ).ceil
    end

end
