class Verdict < Formula
  desc "Token-efficient browser verification for AI coding agents"
  homepage "https://github.com/tuandm/verdict-cli"
  url "https://registry.npmjs.org/verdict-cli/-/verdict-cli-0.1.0.tgz"
  sha256 "59b68b005269f1b73f1a4579b54280decb70b9517b465d5a1e1f1e10d5d8c3fb"
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
