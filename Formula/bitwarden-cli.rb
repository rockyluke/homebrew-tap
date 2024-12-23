class BitwardenCli < Formula
  desc "CLI for Bitwarden"
  homepage "https://github.com/bitwarden/clients"
  version "2024.12.0"
  url "https://github.com/bitwarden/clients/releases/download/cli-v#{version}/bw-macos-#{version}.zip"
  sha256 "c344d3727e2d8266a7a62391445bc814d9d3e934bb63141ff0c7ed8ffdeb5e96"

  conflicts_with "bitwarden-cli"

  def install
    bin.install "bw" => "bw"
  end

  test do
    system "#{bin}/bw --version"
  end
end
