cask "onglx-deploy" do
  version "0.1.40"

  on_arm do
    url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.40/onglx-deploy_Darwin_arm64.tar.gz"
    sha256 "410e56af36a543984c0ffd89b615bb890fa83afd86a0f88e9e84a55f56ab8bb1"
  end

  on_intel do
    url "https://github.com/onglx/homebrew-deploy-cli/releases/download/v0.1.40/onglx-deploy_Darwin_amd64.tar.gz"
    sha256 "e5c2c7379d0ad3342d3acb49a6e0805e8f0fc62c43ec34494f6fe019df9d221a"
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
