class GitLantern < Formula
  include Language::Python::Virtualenv

  desc "Local and GitHub repository visibility and status toolkit"
  homepage "https://github.com/nikolareljin/git-lantern"
  url "https://github.com/nikolareljin/git-lantern/archive/refs/tags/0.8.2.tar.gz"
  sha256 "e5517a4ae5d0bc001b5ded3fa77db771f5cc756fd72487322c589959737e08a8"
  license "MIT"

  depends_on "python@3.12"

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/87/6f/5a73f04007ca950701765949209f068da628bd11f9c2da287278ce91e0ee/argcomplete-3.7.2.tar.gz"
    sha256 "aad8b69a0b9969edb62db0d1752354c0d50717b10e0cbb00e2a958381b9fc6b9"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"lantern", "--help"
  end
end
