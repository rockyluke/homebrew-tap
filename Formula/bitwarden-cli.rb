class BitwardenCli < Formula
  name "Bitwarden CLI"
  desc "CLI for Bitwarden"
  homepage "https://github.com/bitwarden/clients"
  version "2024.12.0"
  url "https://github.com/bitwarden/clients/releases/download/cli-v#{version}/bw-macos-#{version}.zip"
  sha256 "3a2a82f3616cda6f760d1b8f1f3ae4b5451a28ecbe56df5e8941ff98267d9241"

  conflicts_with "bitwarden-cli"
  
  def install
    bin.install "bw" => "bw"
  end

  test do
    system "#{bin}/bw --version"
  end
end
