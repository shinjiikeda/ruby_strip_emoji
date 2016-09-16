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
end
