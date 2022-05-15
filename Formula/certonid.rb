class Certonid < Formula
  CERTONID_VERSION = "0.9.1".freeze

  desc "Serverless SSH Certificate Authority"
  homepage "https://github.com/certonid/certonid"
  version CERTONID_VERSION

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/certonid/certonid/releases/download/#{CERTONID_VERSION}/certonid_#{CERTONID_VERSION}_Darwin_arm64.tar.gz"
    sha256 "7fd750303531a2fb76d658f68591f612090339a8ddabc7fb7388581c8d93e73a"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/certonid/certonid/releases/download/#{CERTONID_VERSION}/certonid_#{CERTONID_VERSION}_Darwin_x86_64.tar.gz"
    sha256 "e6457766d580dd319d58343a644c63ef110972426dec6ad293eeb8cce680c792"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/certonid/certonid/releases/download/#{CERTONID_VERSION}/certonid_#{CERTONID_VERSION}_Linux_x86_64.tar.gz"
    sha256 "ea2cf529d40177f689a074390a5b822e738ea6370da0b7c2fb7e7784d5ca77fa"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/certonid/certonid/releases/download/#{CERTONID_VERSION}/certonid_#{CERTONID_VERSION}_Linux_arm.tar.gz"
    sha256 "fe5c067f56640abf4cd822d8ae30b32136fb6f999c6ff89f515c6436de924f34"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/certonid/certonid/releases/download/#{CERTONID_VERSION}/certonid_#{CERTONID_VERSION}_Linux_arm64.tar.gz"
    sha256 "3f67cb72802d159cd70a26f9899444d78658caac5232bed9e729e89062d041ad"
  end

  def install
    bin.install "certonid"
  end

  test do
    system "#{bin}/certonid", "--version"
  end
end
