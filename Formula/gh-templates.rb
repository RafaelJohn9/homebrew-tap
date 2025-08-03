class GhTemplates < Formula
  desc "GitHub Templates CLI tool"
  homepage "https://github.com/RafaelJohn9/gh-templates"
  version "0.1.37"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.37/gh-templates"
      sha256 "dbce1a3727fd7aa7b98eb03970aef55210aa4a2b06b3f1e9144e62207ec8b83d"
    else
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.37/gh-templates"
      sha256 "dbce1a3727fd7aa7b98eb03970aef55210aa4a2b06b3f1e9144e62207ec8b83d"
    end
  end
  
  on_linux do
    url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.37/gh-templates"
    sha256 "dbce1a3727fd7aa7b98eb03970aef55210aa4a2b06b3f1e9144e62207ec8b83d"
  end
  
  def install
    bin.install "gh-templates"
  end

  test do
    system "#{bin}/gh-templates", "--version"
  end
end
