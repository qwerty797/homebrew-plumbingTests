
class Plumbingtests < Formula
  desc "checks plumbing tests"
  homepage "https://github.com/qwerty797/plumbingTests"
  license "MIT"

  if OS.mac?
    url "https://github.com/qwerty797/plumbingTests/releases/download/v1.0.0/index-macos"
    sha256 "3222a85102eeb3011eef4a0e786d0f298f21c3748ab907ebf6c26b5587aca8ab"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/qwerty797/plumbingTests/releases/download/v1.0.0/index-macos"
      sha256 "3222a85102eeb3011eef4a0e786d0f298f21c3748ab907ebf6c26b5587aca8ab"
    end
  end

  def install
    bin.install (OS.linux? ? "index-macos" : "index-macos") => "plumbing"
  end
end
