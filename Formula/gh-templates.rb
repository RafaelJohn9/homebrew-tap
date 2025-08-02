class GhTemplates < Formula
  desc "GitHub Templates CLI tool"
  homepage "https://github.com/RafaelJohn9/gh-templates"
  version "0.1.32"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.32/gh-templates"
      sha256 "6d418b15d1669d252b33085f9c2f9656fb4ce241fe067884e0ccd4789b68dccf"
    else
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.32/gh-templates"
      sha256 "6d418b15d1669d252b33085f9c2f9656fb4ce241fe067884e0ccd4789b68dccf"
    end
  end
  
  on_linux do
    url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.32/gh-templates"
    sha256 "6d418b15d1669d252b33085f9c2f9656fb4ce241fe067884e0ccd4789b68dccf"
  end
  
  def install
    bin.install "gh-templates"
  end

  test do
    system "#{bin}/gh-templates", "--version"
  end
end
