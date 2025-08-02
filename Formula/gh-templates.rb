class GhTemplates < Formula
  desc "GitHub Templates CLI tool"
  homepage "https://github.com/RafaelJohn9/gh-templates"
  version "0.1.25"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.25/gh-templates"
      sha256 "2f0bbca75e4d841480414c9d7b2cd62f3d7d04231c54e959dc92db90c32a6068"
    else
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.25/gh-templates"
      sha256 "2f0bbca75e4d841480414c9d7b2cd62f3d7d04231c54e959dc92db90c32a6068"
    end
  end
  
  on_linux do
    url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.25/gh-templates"
    sha256 "2f0bbca75e4d841480414c9d7b2cd62f3d7d04231c54e959dc92db90c32a6068"
  end
  
  def install
    bin.install "gh-templates"
  end

  test do
    system "#{bin}/gh-templates", "--version"
  end
end
