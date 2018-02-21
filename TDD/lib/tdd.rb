class Array

  def my_uniq
    uniq_array = []
    self.each do |el|
      uniq_array << el unless uniq_array.include?(el)
    end

    uniq_array
  end

  def two_sum
    indices_array = []

    (0...self.length).each do |i|
      ((i+1)...self.length).each do |j|
        next if j == self.length
        indices_array << [i,j] if self[i] + self[j] == 0
      end
    end

    indices_array
  end

  def my_transpose

    self.each_index do |i|
      self.each_index do |j|
        next if j <= i
        self[i][j], self[j][i] = self[j][i], self[i][j]
      end
    end

    self
  end

  def stock_picker
    best_profit = 0
    best_days = []

    self.each_with_index do |price1, day1|
      self.each_with_index do |price2, day2|
          if price2 - price1 > best_profit
            best_profit = price2 - price1
            best_days = [day1, day2]
          end
      end
    end

    best_days
  end
end
