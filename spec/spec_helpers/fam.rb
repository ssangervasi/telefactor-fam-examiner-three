# frozen_string_literal: true

# This is the application library code!
require 'fam'

# Here are some helpers that were handy from the start!
require 'spec_helpers/hatchery'
require 'spec_helpers/tempdir'

include Fam::CLI::Result::Helpers

RSpec::Matchers.define :be_success do |message|
  match do |actual|
    result = success(message)

    result.output == actual.output &&
      result.error == actual.error &&
      result.status == actual.status
  end
end
