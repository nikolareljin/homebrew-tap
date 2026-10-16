class Vellum < Formula
  desc "Rich Markdown viewer for the terminal"
  homepage "https://github.com/nikolareljin/vellum"
  version "0.7.0"
  license "MIT"
  tag = "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/vellum/releases/download/#{tag}/vellum-#{tag}-macos-arm64.tar.gz"
      sha256 "bd3f86acd373fd58e5f91f294b73fd67203c4aedc08fc8c0be582f1277d3bcd0"
    else
      url "https://github.com/nikolareljin/vellum/releases/download/#{tag}/vellum-#{tag}-macos-x86_64.tar.gz"
      sha256 "ae6bc69318dfce6b2b772bb584e6361ce6657cb08a124e8f6d54c6b553048b29"
    end
  end

  on_linux do
    # Releases ship an x86_64 Linux build only.
    if Hardware::CPU.intel?
      url "https://github.com/nikolareljin/vellum/releases/download/#{tag}/vellum-#{tag}-linux-x86_64.tar.gz"
      sha256 "fefc0cd5debc7148e46f9d85db4e775c3bcc8b470122d62d93d33c448690f5bf"
    end
  end

  def install
    bin.install "vellum"
  end

  test do
    assert_match "vellum", shell_output("#{bin}/vellum --help")
  end
end
