require "php_embed"
require "php_embed_interface/version"

module PHPEI
  
  # ruby -r php_embed_interface -e "puts PHPEI.json_encode({:foo => 'FOO'})"
  def self.method_missing(name, *args)
    PhpEmbed.call(name.to_s, *args)
  end
end

