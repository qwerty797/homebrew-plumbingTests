
class Plumbingtests < Formula
  desc "checks plumbing tests"
  homepage "https://github.com/qwerty797/plumbingTests"
  license "MIT"

  if OS.mac?
    url "https://github.com/qwerty797/plumbingTests/releases/download/v0.0.3/plumbingTests-macos"
    sha256 "9e048091d9c62ebda02c8909c92d879c71cc44050652f9137fcab91c3708f349"
    
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/qwerty797/plumbingTests/releases/download/v0.0.3/plumbingTests-macos"
      sha256 "9e048091d9c62ebda02c8909c92d879c71cc44050652f9137fcab91c3708f349"
    end
  end

  def install
    bin.install (OS.linux? ? "plumbingTests-macos" : "plumbingTests-macos") => "plumbing"
  end
end
