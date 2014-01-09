# PersonAdd

This is gem act as an interface for highrise CRM based
on curl and http requests.

## Installation

Add this line to your application's Gemfile:

    gem 'person-add', :git => 'git@github.com:pipo1991/person_add_highrise.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install person-add

## Usage

There are mainly two functions in the moldule PersonAdd

1..add
This method actually add the person with its details with input
(user,apitoken,first name,last name,email, company, job_title, phone, website) respectively.
** User is found in the url 'https://(user).highrisehq.com/'

## Contributing

1. Fork it ( http://github.com/<my-github-username>/person_add/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
