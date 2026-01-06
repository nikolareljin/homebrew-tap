class ImageView < Formula
  desc "CLI image viewer"
  homepage "https://github.com/nikolareljin/image-view"
  version "0.6.1"
  tag = version

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/image-view/releases/download/#{tag}/image-view-#{tag}-macos-arm64.tar.gz"
      sha256 "bb89fe5e5af2bf24119b044f293e984070b2f8c492b81dd57c74d9ba998444ca"
    else
      url "https://github.com/nikolareljin/image-view/releases/download/#{tag}/image-view-#{tag}-macos-x86_64.tar.gz"
      sha256 "031d613def16cdd0a7882a1b7cd0c9b58ca426e6013be188b7cbcac38b68342f"
    end
  end

  on_linux do
    url "https://github.com/nikolareljin/image-view/releases/download/#{tag}/image-view-#{tag}-linux-x86_64.tar.gz"
    sha256 "ebf7248b584096c72969f2f56b5b264edf4f13a7fe1d5ad7fe6ca014e16ec3d4"
  end

  def install
    bin.install "image-view"
  end
end
