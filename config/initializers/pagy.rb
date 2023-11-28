require "pagy/extras/navs"

Rails.application.config.assets.paths << Pagy.root.join('javascripts')

Pagy::VARS[:steps] = {
  0 => [1, 0, 0, 1],
  540 => [1, 1, 1, 1],
  720 => [1, 2, 2, 1]
}
Pagy::I18n.load(locale: "fr", filepath: "config/locales/pagy/fr.yml")
