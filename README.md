php_embed_interface
=================

Interface for Ruby to call PHP functions.
php_embed_interface is a wrapper for php_embed which is interface for Ruby to call PHP functions.
php_embed_interface provides more natural calling interface than php_embed.

Installation
-----------------

Add this line to your application's Gemfile:

    gem 'php_embed_interface'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install php_embed_interface

Usage
-----------------
php_embed_interface enables you to call PHP functions like below.

    require 'php_embed_interface'
    puts PHPEI.json_encode({:foo => 'FOO', :bar => ['bar', 'baz']})
    # => {"foo":"FOO","bar":["bar","baz"]}

Contributing
-----------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
