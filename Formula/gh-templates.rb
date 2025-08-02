class GhTemplates < Formula
  desc "GitHub Templates CLI tool"
  homepage "https://github.com/RafaelJohn9/gh-templates"
  version "0.1.31"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.31/gh-templates"
      sha256 "5ed1e7957626d29edf6734c3073376aa8824462ed1313ca7e11a188696625708"
    else
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.31/gh-templates"
      sha256 "5ed1e7957626d29edf6734c3073376aa8824462ed1313ca7e11a188696625708"
    end
  end
  
  on_linux do
    url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.31/gh-templates"
    sha256 "5ed1e7957626d29edf6734c3073376aa8824462ed1313ca7e11a188696625708"
  end
  
  def install
    bin.install "gh-templates"
  end

  test do
    system "#{bin}/gh-templates", "--version"
  end
end
