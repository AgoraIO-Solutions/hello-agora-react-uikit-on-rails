class HelloController < ApplicationController
  def world
    set_meta_tags channel: "test", appId: ENV["APP_ID"]
  end
end
