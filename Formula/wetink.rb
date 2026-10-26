class Wetink < Formula
  desc "Live Markdown viewer for the terminal that highlights changed blocks"
  homepage "https://github.com/rooa/wetink"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rooa/wetink/releases/download/v0.1.0/wetink-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d653883ba83b13d27a779f5adaa4a75545f3895d4b1fcf35ab87c02afe8b0415"
    end
    on_intel do
      url "https://github.com/rooa/wetink/releases/download/v0.1.0/wetink-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "605e3be307ac68a900d759c41de5154a04fc3d21dd772d4150f499747869deb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rooa/wetink/releases/download/v0.1.0/wetink-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "913ac3a60e307f43b1cac3516a78d872ddc754b613263bb8ade9c3d2d17bac37"
    end
    on_intel do
      url "https://github.com/rooa/wetink/releases/download/v0.1.0/wetink-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "190af603dc5eaf28808852b110adf3afc78c21ce9c7f7c923ae5e23e8e9cf5f5"
    end
  end

  def install
    bin.install "wetink"
  end

  test do
    (testpath/"t.md").write "# Hello\n"
    assert_match "Hello", shell_output("#{bin}/wetink --print #{testpath}/t.md")
  end
end
