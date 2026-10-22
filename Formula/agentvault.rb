# typed: strict
# frozen_string_literal: true

# AgentVault: CLI and TUI for managing agent configurations and instructions.
class Agentvault < Formula
  desc "CLI and TUI for managing agent configurations and instructions"
  homepage "https://github.com/nikolareljin/agentvault"
  version "0.15.1"
  license "MIT"
  tag = version.to_s

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/agentvault/releases/download/#{tag}/agentvault-darwin-arm64"
      sha256 "c299969cbddb88f293bf196557b3e1f30eb8cf23dea24465d9a3e4b8bf0b1e5a"
    else
      url "https://github.com/nikolareljin/agentvault/releases/download/#{tag}/agentvault-darwin-amd64"
      sha256 "a4daaaf7825e483999d8399f608e1cbe503f6421912949891a4b10757c764add"
    end
  end

  def install
    bin.install Dir["agentvault-darwin-*"][0] => "agentvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentvault version")
  end
end
