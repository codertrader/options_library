Initial Author
--------------
Dan Tylenda-Emmons
Twitter: @CoderTrader
Email: jrubyist@gmail.com

Options Library
===============

A pure Ruby implementation of the classic Black-Scholes option model for pricing Calls or Puts.
 
Goals
-------

* Provide the Open Source Ruby, JRuby and StockTwits communities with a publicly available model for computing option prices.
* Allow users of the library to compute price and greeks: delta, gamma, theta, vega and rho.
* To aid others in the understanding of how price and sensitivities to other factors are computed on a theoretical basis.
* To allo users of the library to extend or contribute back to the project so that it may be improved upon.


Installation
-----------

    gem install options_library


Usage
-----

    require 'rubygems'
    require 'options_library'

    # Option::Calculator.price_call( underlying, strike, time, interest, sigma, dividend )
    call_price = Option::Calculator.price_call( 94.5, 90.5, 0.015, 0.01, 0.4875, 0.0 ) 

Testing
-------

To run the tests:

    $ rake

To add tests see the `Commands` section earlier in this
README.


Contributing
------------

1. Fork it.
2. Create a branch (`git checkout -b my_options_library`)
3. Commit your changes (`git commit -am "Added Hull-White Model"`)
4. Push to the branch (`git push origin my_options_library`)
5. Create an [Issue][1] with a link to your branch
6. Enjoy a fresh cup of coffee and wait

[1]: http://github.com/github/markup/issues
