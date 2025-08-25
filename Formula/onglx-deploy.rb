class OnglxDeploy < Formula
  desc "Deploy AI APIs to cloud providers with 85% cost savings"
  homepage "https://deploy.onglx.io"
  version "0.1.43"
  license "MIT"

  depends_on "opentofu"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.43/onglx-deploy_Darwin_arm64.tar.gz"
      sha256 "4f9afd636732a2e4e5a243c3972d4fb878c11b95374f0408bb0a8a2f91e4a556"
    else
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.43/onglx-deploy_Darwin_amd64.tar.gz"
      sha256 "085b65b1c929045c92c070a1a33d921c6ddc484e790a04c6cd17f8009aaaacdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.43/onglx-deploy_Linux_arm64.tar.gz"
      sha256 "e8ffe1f534c1d2b3a42814d9170dbf46cec48a205b8cbfc656cdf02da737f66d"
    else
      url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.43/onglx-deploy_Linux_amd64.tar.gz"
      sha256 "9aeea08d99d37b5780aed82bb7246149ef8121fded9e6a0f8dd4e4e663d41cd7"
    end
  end

  def install
    bin.install "onglx-deploy"
    
    # Generate shell completions
    generate_completions_from_executable(bin/"onglx-deploy", "completion")
  end

  test do
    system "#{bin}/onglx-deploy", "--help"
  end
end
