cask "onglx-deploy" do
  version "0.1.0"

  on_arm do
    url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.0/onglx-deploy_Darwin_arm64.tar.gz"
    sha256 "e3a582e35124d91d439d7cf9f4c63e8bb17c012523bb4be5678ab43f5e2938b3"
  end

  on_intel do
    url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.0/onglx-deploy_Darwin_amd64.tar.gz"
    sha256 "78d243176c07c21b8712267d5b4c9f0eca7b49600da0eae1fcda73b8027b238e"
  end

  name "OnglX Deploy"
  desc "Deploy AI APIs to cloud providers with 85% cost savings"
  homepage "https://deploy.onglx.io"

  depends_on formula: "opentofu"

  binary "onglx-deploy"

  postflight do
    puts "OnglX Deploy installed successfully!"
    puts "   Get started: onglx-deploy init"
    puts "   Documentation: https://deploy.onglx.io"
  end
end
