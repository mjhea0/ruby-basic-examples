#!/usr/bin/ruby -w

module Complaint
  def gripe
    voice('A')
  end

  def faint_praise
    voice('B')
  end

  def voice(complaint_text)
    raise NotImplementedError,
    "#{self.class} included the Complaint module but didn't define voice!"
  end
end

class MyComplaint
  include Complaint
end

MyComplaint.new.gripe
# NotImplementedError: MyComplaint included the Complaint module
# but didn't define voice!
