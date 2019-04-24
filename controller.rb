require( 'sinatra' )
  require( 'sinatra/contrib/all' )
  require( 'pry-byebug' )

  require_relative( './models/rps.rb' )
  also_reload( './models/*' )

get '/roshambo/:weapon1/:weapon2' do
  weapon1 = params[:weapon1]
  weapon2 = params[:weapon2]
  @result = RPSGame.check_win(weapon1,weapon2)
  erb( :result)
end
