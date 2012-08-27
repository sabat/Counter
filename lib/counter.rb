require 'counter/version'

class Counter
  def initialize(v = 0)
    @value = v
  end

  def increment
    @value = @value.succ
  end

  def decrement
    @value = @value.pred
  end

  def inspect
    @value.to_s
  end

  def ==(v)
    @value == v
  end

  def >(v)
    @value > v
  end

  def <(v)
    @value < v
  end

  def >=(v)
    @value >= v
  end

  def <=(v)
    @value <= v
  end

  def any?
    @value > 0
  end

  def to_ary
    [@value]
  end

  def method_missing(meth, *args)
    if @value.class.respond_to?(meth)
      @value.send(meth, args)
    else
      super(meth, args)
    end
  end
end

