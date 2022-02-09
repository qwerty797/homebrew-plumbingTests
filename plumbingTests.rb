
class Plumbingtests < Formula
  desc "checks plumbing tests"
  homepage "https://github.com/qwerty797/plumbingTests"
  url "https://github.com/qwerty797/plumbingTests/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "aac6e955426a2923ef54462e2267a455e7621fcc6db2b6bf6c6b3168880dc0bf"
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
