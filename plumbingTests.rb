
class Plumbingtests < Formula
  desc "checks plumbing tests"
  homepage "https://github.com/qwerty797/plumbingTests"
  url "https://github.com/qwerty797/plumbingTests/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "aac6e955426a2923ef54462e2267a455e7621fcc6db2b6bf6c6b3168880dc0bf"
  license "MIT"

  if OS.mac?
    url "https://github.com/qwerty797/plumbingTests/releases/download/v1.0.0/index-macos"
    sha256 "900a2bc5507f9a49c83296da58d129c9d6c650f93375853cc60511825b5cec5f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/qwerty797/plumbingTests/releases/download/v1.0.0/index-macos"
      sha256 "6c954592983b24a712445fe63dcdc3773b2cca765f61a59e1dcd2202de5973ac"
    end
  end

  def install
    bin.install (OS.linux? ? "index-macos" : "index-macos") => "plumbing"
  end
end
