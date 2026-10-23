# typed: strict
# frozen_string_literal: true

# AgentVault: CLI and TUI for managing agent configurations and instructions.
class Agentvault < Formula
  desc "CLI and TUI for managing agent configurations and instructions"
  homepage "https://github.com/nikolareljin/agentvault"
  version "0.16.0"
  license "MIT"
  tag = version.to_s

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/agentvault/releases/download/#{tag}/agentvault-darwin-arm64"
      sha256 "15020345543efeab6e7903015a6fbc23cdec28a8c99d127914d6a560db0214d4"
    else
      url "https://github.com/nikolareljin/agentvault/releases/download/#{tag}/agentvault-darwin-amd64"
      sha256 "df037fe4fc323ae25bf8b4c6967c3251feb08c97c577d6f861b509459f20f00a"
    end
  end

  def install
    bin.install Dir["agentvault-darwin-*"][0] => "agentvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentvault version")
  end
end
