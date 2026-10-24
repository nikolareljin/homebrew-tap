# typed: strict
# frozen_string_literal: true

# AgentVault: CLI and TUI for managing agent configurations and instructions.
class Agentvault < Formula
  desc "CLI and TUI for managing agent configurations and instructions"
  homepage "https://github.com/nikolareljin/agentvault"
  version "0.19.0"
  license "MIT"
  tag = version.to_s

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/agentvault/releases/download/#{tag}/agentvault-darwin-arm64"
      sha256 "f896664a699a18d6221748325a0a41696e1309df4003f2eed1a69446fb08c45d"
    else
      url "https://github.com/nikolareljin/agentvault/releases/download/#{tag}/agentvault-darwin-amd64"
      sha256 "be2355f15c36c9c2dac4cec4c02cabc95cfd8494602a2218c067242f76a96a76"
    end
  end

  def install
    bin.install Dir["agentvault-darwin-*"][0] => "agentvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentvault version")
  end
end
