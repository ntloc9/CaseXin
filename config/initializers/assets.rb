# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( main_styles.css )
Rails.application.config.assets.precompile += %w( responsive.css )
Rails.application.config.assets.precompile += %w( single_responsive.css )
Rails.application.config.assets.precompile += %w( mainindex.css )
Rails.application.config.assets.precompile += %w( mainsingle.css )
Rails.application.config.assets.precompile += %w( maincategories.css )
Rails.application.config.assets.precompile += %w( categories_responsive.css )
Rails.application.config.assets.precompile += %w( categories_styles.css )
Rails.application.config.assets.precompile += %w( cart.css )
Rails.application.config.assets.precompile += %w( checkout.css )
Rails.application.config.assets.precompile += %w( isotone.js )
Rails.application.config.assets.precompile += %w( custom.js )
Rails.application.config.assets.precompile += %w( single_custom.js )
Rails.application.config.assets.precompile += %w( easing.js )
Rails.application.config.assets.precompile += %w( categories_custom.js )
Rails.application.config.assets.precompile += %w( jquery-ui.js )
Rails.application.config.assets.precompile += %w( jquery-ui.css )


# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
