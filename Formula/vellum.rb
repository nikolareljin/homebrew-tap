class Vellum < Formula
  desc "Rich Markdown viewer for the terminal"
  homepage "https://github.com/nikolareljin/vellum"
  version "0.6.0"
  license "MIT"
  tag = "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/vellum/releases/download/#{tag}/vellum-#{tag}-macos-arm64.tar.gz"
      sha256 "94f220bbf5c685405392d3216647f6c74ce019df3596e46b76dd341728ec22af"
    else
      url "https://github.com/nikolareljin/vellum/releases/download/#{tag}/vellum-#{tag}-macos-x86_64.tar.gz"
      sha256 "96a1dae678101f7d46bb3463324d0e3805089a0f78c04e1a9256d47b236ec63c"
    end
  end

  on_linux do
    url "https://github.com/nikolareljin/vellum/releases/download/#{tag}/vellum-#{tag}-linux-x86_64.tar.gz"
    sha256 "5c92bc3fc363ded7398e1004d31320ec0249a78c363418307df53171f3b5e077"
  end

  def install
    bin.install "vellum"
  end

  test do
    assert_match "vellum", shell_output("#{bin}/vellum --help")
  end
end
