class Verdict < Formula
  desc "Token-efficient browser verification for AI coding agents"
  homepage "https://github.com/tuandm/verdict-cli"
  url "https://registry.npmjs.org/verdict-cli/-/verdict-cli-0.1.1.tgz"
  sha256 "21b7e550f5c6fe5b670602a47872b176fb6c7b3f63dad9660b9c1e4750ff3c70"
  license "MIT"

  depends_on "node@18"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    output = shell_output("#{bin}/verdict 2>&1", 0)
    assert_match "Verdict", output
  end
end
