# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
# 開発環境のみ、graphiql-railsのスタイルを読み込む
if Rails.env.development?
  Rails.application.config.assets.precompile += %w(graphiql/rails/application.js graphiql/rails/application.css )
end
