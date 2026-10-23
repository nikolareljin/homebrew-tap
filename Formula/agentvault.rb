# typed: strict
# frozen_string_literal: true

# AgentVault: CLI and TUI for managing agent configurations and instructions.
class Agentvault < Formula
  desc "CLI and TUI for managing agent configurations and instructions"
  homepage "https://github.com/nikolareljin/agentvault"
  version "0.17.0"
  license "MIT"
  tag = version.to_s

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikolareljin/agentvault/releases/download/#{tag}/agentvault-darwin-arm64"
      sha256 "1189f72710799e21c9b55f2491a4e2bf0fddc8a390c29a2a06a12584a5b03e71"
    else
      url "https://github.com/nikolareljin/agentvault/releases/download/#{tag}/agentvault-darwin-amd64"
      sha256 "d32b95c6373c2a83fc725f30d84cf686f7e81f8c5947572a18c121840cf1e878"
    end
  end

  def install
    bin.install Dir["agentvault-darwin-*"][0] => "agentvault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentvault version")
  end
end
