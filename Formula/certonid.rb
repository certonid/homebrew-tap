# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certonid < Formula
  desc "Serverless SSH Certificate Authority"
  homepage "https://github.com/certonid/certonid"
  version "0.9.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/certonid/certonid/releases/download/0.9.6/certonid_Darwin_x86_64.tar.gz"
      sha256 "d67b16c60b03735bb3d2f81599dfe12a20916f46b6bc2eaf361a9b46718a8b21"

      def install
        bin.install "certonid"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/certonid/certonid/releases/download/0.9.6/certonid_Darwin_arm64.tar.gz"
      sha256 "7232b9a0bfb6bedcfd699207ac180ffb0c5301139fc96e146bb863a2a67136e2"

      def install
        bin.install "certonid"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/certonid/certonid/releases/download/0.9.6/certonid_Linux_armv7.tar.gz"
      sha256 "3ed78ebe42abbe86ec45b9e90eff05c138d2b44136779e6685523fb18870f67f"

      def install
        bin.install "certonid"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/certonid/certonid/releases/download/0.9.6/certonid_Linux_x86_64.tar.gz"
      sha256 "4a4bda76daeda0d7c942e1a8c16ba37eb3fd78f11241b924cb17b678c4763ac6"

      def install
        bin.install "certonid"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/certonid/certonid/releases/download/0.9.6/certonid_Linux_arm64.tar.gz"
      sha256 "cd419a70f6c4bbd75b7e2cd2815a9b7bf1abd3e3aef7c8d9181304ec42951042"

      def install
        bin.install "certonid"
      end
    end
  end

  test do
    system "#{bin}/certonid", "--version"
  end
end
