class GhTemplates < Formula
  desc "GitHub Templates CLI tool"
  homepage "https://github.com/RafaelJohn9/gh-templates"
  version "0.1.27"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.27/gh-templates"
      sha256 "69258918db5fa3ffdd7914ed7a3279a340cdf22627ae52cc83cf0fec2ceba9b4"
    else
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.27/gh-templates"
      sha256 "69258918db5fa3ffdd7914ed7a3279a340cdf22627ae52cc83cf0fec2ceba9b4"
    end
  end
  
  on_linux do
    url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.27/gh-templates"
    sha256 "69258918db5fa3ffdd7914ed7a3279a340cdf22627ae52cc83cf0fec2ceba9b4"
  end
  
  def install
    bin.install "gh-templates"
  end

  test do
    system "#{bin}/gh-templates", "--version"
  end
end
