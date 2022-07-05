class ApplicationController < ActionController::Base

  def blank_square_form
    render ({ :template => "calculation_templates/square_form.html.erb"})
  end 

 
  def calculate_square

    @num = params.fetch("elephant").to_f
    @square_of_num = @num * @num
  
    render ({ :template => "calculation_templates/square_results.html.erb"})
  end 

  def blank_square_root_form
    render ({ :template => "calculation_templates/square_root_form.html.erb"})
  end 

  def calculate_square_root

    @num = params.fetch("pandababy").to_f
    @squareroot_of_num = @num ** 0.5
  
    render ({ :template => "calculation_templates/square_root_results.html"})
  end 

  def blank_payment_form
    render ({ :template => "calculation_templates/payment_form.html.erb"})
  end 

  def calculate_payment

    @apr = params.fetch("ostrichbaby").to_f
    @years_left = params.fetch("turkeybaby").to_f
    @pv = params.fetch("goosebaby").to_f

     @monthly_apr = @apr / 100 / 12 
    # @months_left = @years_left * 12
    # @paymenttop =  ((@monthly_apr)* @pv)
    # @paymentbottom = 1- ((1 + (@monthly_apr)) ** -@months_left)
    # @payment = (@paymenttop / @paymentbottom).to_f
 @payment = ((@pv * @monthly_apr * ((1 + @monthly_apr) ** (@years_left * 12) ) ) / ( ((1 + @monthly_apr) ** (@years_left * 12) ) - 1 )).to_f.to_s(:currency)


    render ({ :template => "calculation_templates/payment_results.html"})
  end 

  def blank_random_form
    render ({ :template => "calculation_templates/random_form.html.erb"})
  end 

 
  def calculate_random

    @minimum = params.fetch("wormbaby").to_f
    @maximum = params.fetch("slugbaby").to_f

    @random_number = rand(@minimum..@maximum)
  
    render ({ :template => "calculation_templates/random_results.html.erb"})
  end 
end
