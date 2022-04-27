
class Plumbingtests < Formula
  desc "checks plumbing tests"
  homepage "https://github.com/qwerty797/plumbingTests"
  license "MIT"

  if OS.mac?
    url "https://github.com/qwerty797/homebrew-plumbingTests/releases/download/0.0.6/plumbingTests-macos"
    sha256 "d58d469de2b8425c23762f43294625deac13b05aebedcdf92f4b8f6e27c933c5"
    
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/qwerty797/homebrew-plumbingTests/releases/download/0.0.6/plumbingTests-macos"
      sha256 "d58d469de2b8425c23762f43294625deac13b05aebedcdf92f4b8f6e27c933c5"
    end
  end

  def install
    bin.install (OS.linux? ? "plumbingTests-macos" : "plumbingTests-macos") => "plumbing"
  end
end
