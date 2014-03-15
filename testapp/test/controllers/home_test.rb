require 'test_helper'
class TestAdd < ActiveSupport::TestCase
  def test_add
    haystack = Rails.application.assets.find_asset('ember-easyForm.js').to_s
    needleName = "Ember EasyForm"
    needleVerion =  "Version: 1.0.0.beta.1"
    assert haystack.include?(needleName), 'has Ember EasyForm in the assets'
    assert haystack.include?(needleVerion), 'has Ember EasyForm in the assets'
  end
end