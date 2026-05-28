class ImageView < Formula
  desc "CLI image viewer"
  homepage "https://github.com/nikolareljin/image-view"
  version "0.6.2"
  tag = version

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/image-view/releases/download/#{tag}/image-view-#{tag}-macos-arm64.tar.gz"
      sha256 "9f3ce20036b9d4830666ca2e7934f807d9eb913a262044d0d000c911f0c71429"
    else
      url "https://github.com/nikolareljin/image-view/releases/download/#{tag}/image-view-#{tag}-macos-x86_64.tar.gz"
      sha256 "559dc0365e1569717f058ad76bfcceb604cd412a2501d19795dd23ed83e3a1ae"
    end
  end

  on_linux do
    url "https://github.com/nikolareljin/image-view/releases/download/#{tag}/image-view-#{tag}-linux-x86_64.tar.gz"
    sha256 "85c731c4538a30f72c2ab9fc1f57cc3466dba0bab5496e9e808976115013dd9a"
  end

  def install
    bin.install "image-view"
  end
end
