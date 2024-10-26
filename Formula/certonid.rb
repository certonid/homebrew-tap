# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certonid < Formula
  desc "Serverless SSH Certificate Authority"
  homepage "https://github.com/certonid/certonid"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/certonid/certonid/releases/download/0.10.0/certonid_Darwin_x86_64.tar.gz"
      sha256 "165caf322152eae50eae5a37444253a8d80629f771f86a988d661bc3828418d0"

      def install
        bin.install "certonid"
      end
    end
    on_arm do
      url "https://github.com/certonid/certonid/releases/download/0.10.0/certonid_Darwin_arm64.tar.gz"
      sha256 "ef68b13c1d2f33729c0616b59417283f5b8b3650599b48a073350366b5b21982"

      def install
        bin.install "certonid"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/certonid/certonid/releases/download/0.10.0/certonid_Linux_x86_64.tar.gz"
        sha256 "ed2c0f777f9aa576f8bc22a3c94fd26772d1486b487171bf254380db5a1f1a31"

        def install
          bin.install "certonid"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/certonid/certonid/releases/download/0.10.0/certonid_Linux_arm.tar.gz"
        sha256 "76a42ef2bd481f92c41f7c937028d9cd2583e4c69d4e2de93de7174f2c8bee76"

        def install
          bin.install "certonid"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/certonid/certonid/releases/download/0.10.0/certonid_Linux_arm64.tar.gz"
        sha256 "47a12519a658d75f910c2332c7eb5aefb675d2204b9afbf7bb78721172445bc8"

        def install
          bin.install "certonid"
        end
      end
    end
  end

  test do
    system "#{bin}/certonid", "--version"
  end
end
