class GhTemplates < Formula
  desc "GitHub Templates CLI tool"
  homepage "https://github.com/RafaelJohn9/gh-templates"
  version "0.1.34"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.34/gh-templates"
      sha256 "ad3c67321d0f81e6501f3177971f16ab877ee06e189591199d2f13905600f8ff"
    else
      url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.34/gh-templates"
      sha256 "ad3c67321d0f81e6501f3177971f16ab877ee06e189591199d2f13905600f8ff"
    end
  end
  
  on_linux do
    url "https://github.com/RafaelJohn9/gh-templates/releases/download/v0.1.34/gh-templates"
    sha256 "ad3c67321d0f81e6501f3177971f16ab877ee06e189591199d2f13905600f8ff"
  end
  
  def install
    bin.install "gh-templates"
  end

  test do
    system "#{bin}/gh-templates", "--version"
  end
end
