
class PlumbingtestsAT3 < Formula
  desc "checks plumbing tests"
  homepage "https://github.com/qwerty797/plumbingTests"
  license "MIT"

  if OS.mac?
    url "https://github.com/qwerty797/homebrew-plumbingTests/releases/download/v0.0.3/plumbingTests-macos"
    sha256 "bb65294eb496549a83e38437921c5d51ef43d728eb8f72af22026528c43e8aa4"
    
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/qwerty797/homebrew-plumbingTests/releases/download/v0.0.3/plumbingTests-macos"
      sha256 "bb65294eb496549a83e38437921c5d51ef43d728eb8f72af22026528c43e8aa4"
    end
  end

  def install
    bin.install (OS.linux? ? "plumbingTests-macos" : "plumbingTests-macos") => "plumbing"
  end
end
