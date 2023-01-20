
class PlumbingtestsAT3 < Formula
  desc "checks plumbing tests"
  homepage "https://github.com/qwerty797/plumbingTests"
  license "MIT"

  if OS.mac?
    url "https://github.com/qwerty797/homebrew-plumbingTests/archive/refs/tags/v0.0.3.tar.gz"
    sha256 "dbed0138082fb07b959bf153dd9857a30551714c8916a8c11871629e18be8e5d"
    
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/qwerty797/homebrew-plumbingTests/archive/refs/tags/v0.0.3.tar.gz"
      sha256 "dbed0138082fb07b959bf153dd9857a30551714c8916a8c11871629e18be8e5d"
    end
  end

  def install
    bin.install (OS.linux? ? "plumbingTests-macos" : "plumbingTests-macos") => "plumbing"
  end
end
