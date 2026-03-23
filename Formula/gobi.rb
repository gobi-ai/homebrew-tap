class Gobi < Formula
  desc "CLI client for the Gobi collaborative knowledge platform"
  homepage "https://github.com/gobi-ai/gobi-cli"
  url "https://registry.npmjs.org/@gobi-ai/cli/-/cli-0.6.5.tgz"
  sha256 "11218e2a887db8d6a0a9dd2ab219af7d397dddb8759e5f760f676d308e5fdcd2"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gobi --version")
  end
end
