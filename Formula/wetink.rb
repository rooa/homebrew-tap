class Wetink < Formula
  desc "Live Markdown viewer for the terminal that highlights changed blocks"
  homepage "https://github.com/rooa/wetink"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rooa/wetink/releases/download/v0.1.0/wetink-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "4dc3361c09bd43efa4c6ed04aa9ae707470fcd614db943325b663cce67e3c7fb"
    end
    on_intel do
      url "https://github.com/rooa/wetink/releases/download/v0.1.0/wetink-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e544ea72bdbb9a749a0dad333e528c29e38535318def8f33f7197e431af70144"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rooa/wetink/releases/download/v0.1.0/wetink-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "97515ff34027768b35be5aad7b1d364d779c0c3f779d5f20824ec43a03cb5f5f"
    end
    on_intel do
      url "https://github.com/rooa/wetink/releases/download/v0.1.0/wetink-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "027663cb087b7806f8d24b60e4d5e317db42d4764e50c80dd37d1972be4b6c5e"
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
