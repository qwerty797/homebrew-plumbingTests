
class Plumbingtests < Formula
  desc "checks plumbing tests"
  homepage "https://github.com/qwerty797/plumbingTests"
  license "MIT"

  if OS.mac?
    url "https://github.com/qwerty797/plumbingTests/releases/download/v0.0.4/plumbingTests-macos"
    sha256 "b5c467cde50d1d50f55ede339f2c5cee539e041f2fdffaaa61e953758fee0936"
    
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/qwerty797/plumbingTests/releases/download/v0.0.4/plumbingTests-macos"
      sha256 "b5c467cde50d1d50f55ede339f2c5cee539e041f2fdffaaa61e953758fee0936"
    end
  end

  def install
    bin.install (OS.linux? ? "plumbingTests-macos" : "plumbingTests-macos") => "plumbing"
  end
end
