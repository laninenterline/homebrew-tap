class Aehcli < Formula
  include Language::Python::Virtualenv

  desc "Framework-neutral, task-level evaluation and regression harness for AI agents"
  homepage "https://github.com/laninenterline/agent-eval-harness"
  url "https://files.pythonhosted.org/packages/1c/01/5c5c9bcea62cd7cb7afbc31333c2ec999df82bbd35e8167c97c0730f3b1f/aehcli-0.1.1.tar.gz"
  sha256 "db97bdcf624ca84d5f529e3e1b491c17059541c1cd6229095f4dee31a110fdbf"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage: aeh", shell_output("#{bin}/aeh --help")
    assert_match "demo", shell_output("#{bin}/aeh demo")
  end
end

