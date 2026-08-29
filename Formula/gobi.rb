class Gobi < Formula
  desc "CLI client for the Gobi collaborative knowledge platform"
  homepage "https://github.com/gobi-ai/gobi-cli"
  url "https://registry.npmjs.org/@gobi-ai/cli/-/cli-2.5.27.tgz"
  sha256 "ea74e779d4986ed25c76a48ded52370475d99a458e05bd0df2f0f350a3d92ee3"
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
