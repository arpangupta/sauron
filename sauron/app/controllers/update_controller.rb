class UpdateController < ApplicationController
  def save
  	print "Param Received: ", params['data']
  	return 'thanks'
  end
end
