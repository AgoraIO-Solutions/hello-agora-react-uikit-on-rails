class HelloController < ApplicationController
  def world
    set_meta_tags channel: "test", appId: Rails.application.credentials.agora_app_id
  end
end
