# typed: strict
# frozen_string_literal: true

# AgentVault: CLI and TUI for managing agent configurations and instructions.
class Agentvault < Formula
  desc "CLI and TUI for managing agent configurations and instructions"
  homepage "https://github.com/nikolareljin/agentvault"
  version "0.18.0"
  license "MIT"
  tag = version.to_s

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/agentvault/releases/download/#{tag}/agentvault-darwin-arm64"
      sha256 "a63a162570839618c55e68e57c472bf9eb041339179837d49ae9ba2ebd59409b"
    else
      url "https://github.com/nikolareljin/agentvault/releases/download/#{tag}/agentvault-darwin-amd64"
      sha256 "229efdeb4a4af1cea567ede59d35a0d5927c220b6b4693e447cacc2abc1fb15a"
    end
  end

  def install
    bin.install Dir["agentvault-darwin-*"][0] => "agentvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentvault version")
  end
end
