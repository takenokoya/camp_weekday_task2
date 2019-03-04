class Car
  # 定数を追加
  UP_SPEED = 10
  DOWN_SPEED = 20

  @@count = 0
  attr_accessor :number, :color
  # speedは外部から設定しないのでreaderで定義
  # @speedが使えるようになる
  attr_reader :speed

  def initialize(number, color)
    @number = number
    @color = color
    # @speedを初期化
    @speed = 0
    @@count += 1
  end

  # 加速用のメソッド追加
  def speed_up
    @speed += UP_SPEED
    # スピードが50以上でアラート&減速メソッド追加
    if  @speed >= 50
      puts "[ALERT]スピードが#{@speed}になりました。減速します。"
      self.speed_down
    # スピードが30以上でアラート追加
    elsif @speed >= 30
      puts "[ALERT]スピードが#{@speed}になりました。"
    end
  end

  # 減速用のメソッド追加
  def speed_down
    # ifの結果を変数に代入する場合は以下の記述でOK
    @speed = if @speed - DOWN_SPEED < 0
               0
             else
               @speed - DOWN_SPEED
             end
  end

  def self.count
    @@count  # return @@countの略
  end
end

# Carクラスから継承してTrackCarクラスを追加
class TrackCar < Car
  #ゲッターを追加
  attr_reader :load_weight

  #initializeメソッド追加。load_weightのデフォルト引数を設定
  def initialize(number, color, load_weight = 500)
    @load_weight = load_weight
  end

end
