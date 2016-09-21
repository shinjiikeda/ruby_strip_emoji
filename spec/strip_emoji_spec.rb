require 'spec_helper'

describe StripEmoji do
  it 'has a version number' do
    expect(StripEmoji::VERSION).not_to be nil
  end

  it 'test case1' do
    expect(StripEmoji::strip_emoji("test")).to eq 'test'
  end
  
  it 'test case2' do
    expect(StripEmoji::strip_emoji("test😄")).to eq 'test '
  end

  it 'test case3' do
    expect(StripEmoji::strip_emoji("test😄", '*')).to eq 'test*'
  end
  
  it 'test case4' do
    expect(StripEmoji::strip_emoji("1234567890")).to eq '1234567890'
  end

  it 'test case5' do
    expect(StripEmoji::strip_emoji("1️⃣")).to eq ' '
  end
end
