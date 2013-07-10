# UlamSpiral

This gem can generate Ulam spiral and also shows result on console

## Installation

Add this line to your application's Gemfile:

    gem 'ulam_spiral'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ulam_spiral

## Usage

    require "ulam_spiral"

    ulam_spiral = UlamSpiral.new(first_number: 3, last_number: 13)
    ulam_spiral.generate_spiral
    ulam_spiral.show
    #=>  7       5
    #=>
    #=>      3      13
    #=>
    #=>         11
