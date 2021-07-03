require 'rubygems'

platform :ios do
  desc 'Run unit tests'
  lane :ci_run_tests do
    perform_tests
  end

  private_lane :perform_tests do
    scan(
      scheme: 'MathForFun',
      deployment_target_version: '14.1',
      fail_build: false,
      output_types: 'junit'
    )
  end
end
