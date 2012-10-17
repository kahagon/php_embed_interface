require "php_embed"
require "php_embed_interface/version"

# interface for PhpEmbed.
# you can call PHP function like below
#   require 'php_embed_interface'
#   puts PHPEI.json_encode({:foo => 'FOO', :bar => ['bar', 'baz']})
#   # => {"foo":"FOO","bar":["bar","baz"]}
module PHPEI
  
  # default handler for PHPEI.setOutputHandler
  @@defaultOutputHandler = lambda {|output|
    print output
  }
  
  # wrapper for PhpEmbed.
  # [handler] lambda or Proc instance
  def self.setOutputHandler(handler)
    PhpEmbed.setOutputHandler(handler)
  end
  
  # trap calling PHP function.
  def self.method_missing(name, *args)
    PhpEmbed.call(name.to_s, *args)
  end
 
  setOutputHandler(@@defaultOutputHandler)
  
end

