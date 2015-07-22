# Author Dan Tylenda-Emmons
# Since Feb 18, 2011
# Based on Black-Scholes forumla for pricing options

module Option
  class Model

    # The two known option types, Call and Put
    KNOWN_OPTION_TYPES = [:call, :put]

    # A map to define methods to call based on option_type
    CALC_PRICE_METHODS  = { :call=>Calculator.method('price_call'),       :put=>Calculator.method('price_put') }
    CALC_DELTA_METHODS  = { :call=>Calculator.method('delta_call'),       :put=>Calculator.method('delta_put') }
    CALC_THETA_METHODS  = { :call=>Calculator.method('theta_call'),       :put=>Calculator.method('theta_put') }
    IMPLIED_VOL_METHODS = { :call=>Calculator.method('implied_vol_call'), :put=>Calculator.method('implied_vol_put') }

    attr_accessor :underlying, :strike, :time, :interest, :sigma, :dividend, :option_type

    def initialize(option_type)
      self.option_type = option_type
      self.underlying = 0.0
      self.strike = 0.0
      self.time = 0.0
      self.interest = 0.0
      self.sigma = 0.0
      self.dividend = 0.0
      raise 'Unknown option_type' unless KNOWN_OPTION_TYPES.include?(option_type) 
    end

    def calc_price
      CALC_PRICE_METHODS[option_type].call(underlying, strike, time, interest, sigma, dividend)
    end

    def calc_delta
      CALC_DELTA_METHODS[option_type].call(underlying, strike, time, interest, sigma, dividend)
    end

    def calc_gamma
      Calculator.gamma(underlying, strike, time, interest, sigma, dividend)
    end

    def calc_theta
      CALC_THETA_METHODS[option_type].call(underlying, strike, time, interest, sigma, dividend)
    end

    def calc_vega
      Calculator.vega(underlying, strike, time, interest, sigma, dividend)
    end

    def calc_implied_vol(target_price)
      IMPLIED_VOL_METHODS[option_type].call(underlying, strike, time, interest, target_price, dividend)
    end

  end
end
