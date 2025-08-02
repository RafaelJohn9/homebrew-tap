class GhTemplates < Formula
  desc "GitHub Templates CLI tool"
  homepage "https://github.com/RafaelJohn9/gh-templates"
  version "0.1.19"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.19/gh-templates"
      sha256 "PLACEHOLDER_ARM64_SHA"
    else
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.19/gh-templates"
      sha256 "PLACEHOLDER_X64_SHA"
    end
  end
  
  on_linux do
    url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.19/gh-templates"
    sha256 "PLACEHOLDER_LINUX_SHA"
  end
  
  def install
    bin.install "gh-templates"
  end

  test do
    system "#{bin}/gh-templates", "--version"
  end
end
