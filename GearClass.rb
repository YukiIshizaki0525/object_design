# gear.rbを改良
# 車輪サイズも考慮

class Gear
  attr_reader :chaining, :cog, :rim, :tire
  def initialize(chaining, cog, rim, tire)
    @chaining = chaining
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chaining / cog.to_f
  end

  # ギアインチ測定の公式から取得
  def gear_inches
    ratio * (rim + (tire * 2))
  end
end

# puts Gear.new(52, 11).ratio
# puts Gear.new(30, 27).ratio

# 車輪の違いによる影響を計算
puts Gear.new(52, 11, 26, 1.5).gear_inches
puts Gear.new(52, 11, 24, 1.25).gear_inches

