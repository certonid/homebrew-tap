# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certonid < Formula
  desc "Serverless SSH Certificate Authority"
  homepage "https://github.com/certonid/certonid"
  version "0.9.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/certonid/certonid/releases/download/0.9.9/certonid_Darwin_arm64.tar.gz"
      sha256 "2c760152a1180e32e9c4a6560d8d2401379745d9f38ec593cfc4dd0eabeaef3e"

      def install
        bin.install "certonid"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/certonid/certonid/releases/download/0.9.9/certonid_Darwin_x86_64.tar.gz"
      sha256 "2d1f0a69af36887a6ffce15bd832bd63a2f3a368d7a9e778e008c7195c7500b3"

      def install
        bin.install "certonid"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/certonid/certonid/releases/download/0.9.9/certonid_Linux_x86_64.tar.gz"
      sha256 "d46bed3e7de4cb54422b06bcaa6ad2aa427feebe771274369a9f18fc171e6e33"

      def install
        bin.install "certonid"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/certonid/certonid/releases/download/0.9.9/certonid_Linux_arm.tar.gz"
      sha256 "b94e8b0b74d60145c623959dc708776aff095ad98cb8b7894dbd98da7477de9c"

      def install
        bin.install "certonid"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/certonid/certonid/releases/download/0.9.9/certonid_Linux_arm64.tar.gz"
      sha256 "58fbd66d2db39ae61f2546086de02ee2dde022bb856bb7346074caa73b26e2dc"

      def install
        bin.install "certonid"
      end
    end
  end

  test do
    system "#{bin}/certonid", "--version"
  end
end
