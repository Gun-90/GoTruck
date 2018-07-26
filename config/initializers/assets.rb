# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( menus.js menus.scss )
Rails.application.config.assets.precompile += %w( trucks_1.js trucks_1.scss )
Rails.application.config.assets.precompile += %w( trucks_2.js trucks_2.scss )
Rails.application.config.assets.precompile += %w( maps.js maps.scss )
Rails.application.config.assets.precompile += %w( communities.js communities.scss )
#Rails.application.config.assets.precompile += %w( trucks.js devise/registrations.scss )
Rails.application.config.assets.precompile += %w( devise/registrations.js devise/registrations.scss )
Rails.application.config.assets.precompile += %w( devise/sessions.js devise/sessions.scss )
Rails.application.config.assets.precompile += %w( communities.css )

