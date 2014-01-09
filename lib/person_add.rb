require "person_add/version"
require "curl"

module PersonAdd
	 class Person 
		def self.add(user,api,name,last,email, company, job_title, phone, website)
		  	 val='<person>'
			 val= val+'<first-name>'+name.to_s+'</first-name>'
		      	 val= val+'<last-name>'+last.to_s+'</last-name>'
			 val= val+'<title>'+job_title.to_s+'</title>'
			 val= val+'<company-name>'+company.to_s+'</company-name>'
			 val= val+'<contact-data>'
			 val= val+'<email-addresses>'
			 val= val+'<email-address>'  
			 val= val+'<address>'+email.to_s+'</address>' 
			 val= val+'<location>Work</location>'
			 val= val+'</email-address>'
			 val= val+'</email-addresses>' 
			 val= val+'<phone-numbers>'
			 val= val+'<phone-number>'
			 val= val+'<number>'+phone.to_s+'</number>'
			 val= val+'<location>Work</location>'
			 val= val+'</phone-number>'
			 val= val+'</phone-numbers>'
			 val= val+'<web-addresses>'
			 val= val+'<web-address>'
			 val= val+'<url>'+website.to_s+'</url>'
			 val= val+'<location>Work</location>'
			 val= val+'</web-address>'
			 val= val+'</web-addresses>'
			 val= val+'</contact-data>'
			 val= val+'</person>'
			 val="'"+val+"'"
			 site="https://"+api.to_s+":X@"+user.to_s+".highrisehq.com/people.xml"
			 curl = Curl::Easy.http_post(site, val) do |c|
			  c.headers['Accept'] = 'application/xml'
				  c.headers['Content-Type'] = 'application/xml'
				 end
			 @res=curl.body_str
			 end
	 end	
end

