class ImageView < Formula
  desc "CLI image viewer"
  homepage "https://github.com/nikolareljin/image-view"
  version "0.5.0"
  tag = version

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/image-view/releases/download/#{tag}/image-view-#{tag}-macos-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/nikolareljin/image-view/releases/download/#{tag}/image-view-#{tag}-macos-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    url "https://github.com/nikolareljin/image-view/releases/download/#{tag}/image-view-#{tag}-linux-x86_64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "image-view"
  end
end
