class UpdateController < ApplicationController
  def save
  	print "Param Received: ", params['data']
  	s = params['data']
  	arr = s.split(',')
  	key = arr[0].split(':')[1]
  	action = arr[1].split(':')[1]
  	json = s.split('JSON')[1].split(' : ')[1]
  	json = JSON.parse json
  	File.open("/home/ubuntu/hack_sauron/sauron/sauron/app/controllers/orderfeed.txt", "a+"){|f| f << action<<':'<<key<<':'<<json['pid']<<':'<<json['loc_id']<<":"<<json['date']<<"\n" }
  	return 'thanks'
  end
end
