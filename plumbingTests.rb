
class Plumbingtests < Formula
  desc "checks plumbing tests"
  homepage "https://github.com/qwerty797/plumbingTests"
  license "MIT"

  if OS.mac?
    url "https://github.com/qwerty797/plumbingTests/releases/download/v0.0.5/plumbingTests-macos", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "f3c9d7e5096bb43557baf808d3e4b9fba664dff4540ae62ec3330df2b865860a"
    
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/qwerty797/plumbingTests/releases/download/v0.0.5/plumbingTests-macos", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f3c9d7e5096bb43557baf808d3e4b9fba664dff4540ae62ec3330df2b865860a"
    end
  end

  def install
    bin.install (OS.linux? ? "plumbingTests-macos" : "plumbingTests-macos") => "plumbing"
  end
end
