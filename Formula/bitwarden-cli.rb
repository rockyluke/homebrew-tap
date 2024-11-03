class BitwardenCli < Formula
  name "Bitwarden CLI"
  desc "CLI for Bitwarden"
  homepage "https://github.com/bitwarden/clients"
  version "2024.10.0"
  url "https://github.com/bitwarden/clients/releases/download/cli-v#{version}/bw-macos-#{version}.zip"
  sha256 "6c6885895cda9ba0a1326e08edd353cc51e59102a52d5b826cdcf362d3cd6b98"

  def install
    bin.install "bw" => "bw"
  end
end
