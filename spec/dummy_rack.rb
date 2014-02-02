require 'rack'

class DummyRack
  def self.call(env)
    [200, {"Content-Type" => "text/html"}, "I Am A Thing"]
  end
end
