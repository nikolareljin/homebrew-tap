class Vellum < Formula
  desc "Rich Markdown viewer for the terminal"
  homepage "https://github.com/nikolareljin/vellum"
  version "0.6.0"
  tag = version

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/vellum/releases/download/#{tag}/vellum-#{tag}-macos-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/nikolareljin/vellum/releases/download/#{tag}/vellum-#{tag}-macos-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000001"
    end
  end

  on_linux do
    url "https://github.com/nikolareljin/vellum/releases/download/#{tag}/vellum-#{tag}-linux-x86_64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000002"
  end

  def install
    bin.install "vellum"
  end

  test do
    assert_match "vellum", shell_output("#{bin}/vellum --help")
  end
end
