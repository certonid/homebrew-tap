# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certonid < Formula
  desc "Serverless SSH Certificate Authority"
  homepage "https://github.com/certonid/certonid"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/certonid/certonid/releases/download/0.9.4/certonid_Darwin_arm64.tar.gz"
      sha256 "4d89ac365a9aa2f6f2a4fcc5b8d061f94e72235279c10f765bd32d1fe87c9848"

      def install
        bin.install "certonid"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/certonid/certonid/releases/download/0.9.4/certonid_Darwin_x86_64.tar.gz"
      sha256 "ca0a05c0ab5626a4ed5aa22101861e2d8b3c46343e4b22ab227098d6b9221657"

      def install
        bin.install "certonid"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/certonid/certonid/releases/download/0.9.4/certonid_Linux_x86_64.tar.gz"
      sha256 "98dbd05acfb4fef23cdfbb95d9bff5f5736848a5f8251cc6c828ececf77dbd49"

      def install
        bin.install "certonid"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/certonid/certonid/releases/download/0.9.4/certonid_Linux_armv7.tar.gz"
      sha256 "e22d13289bc26e195b39ec8960e9fc2290103f3e1d900d00b59594d1ea88f712"

      def install
        bin.install "certonid"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/certonid/certonid/releases/download/0.9.4/certonid_Linux_arm64.tar.gz"
      sha256 "c864e223b48f9ebb2197a9af9c6c792da6b70c176fa0d400662970fb2622888b"

      def install
        bin.install "certonid"
      end
    end
  end

  test do
    system "#{bin}/certonid", "--version"
  end
end
