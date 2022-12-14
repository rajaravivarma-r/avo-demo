Avo.configure do |config|
  ## == Routing ==
  config.root_path = '/products'

  ## == Set the context ==
  config.set_context do
    # User.connection.schema_search_path = 'public'
    Product.connection.schema_search_path = 'google'
  end

  ## == Authentication ==
  # config.current_user_method = :current_user
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end

  ## == Authorization ==
  # config.authorization_methods = {
  #   index: 'index?',
  #   show: 'show?',
  #   edit: 'edit?',
  #   new: 'new?',
  #   update: 'update?',
  #   create: 'create?',
  #   destroy: 'destroy?',
  # }

  ## == Localization ==
  # config.locale = 'en-US'

  ## == Customization ==
  config.app_name = 'SampleApp'
  config.timezone = 'Chennai'
  # config.currency = 'USD'
  # config.per_page = 24
  # config.per_page_steps = [12, 24, 48, 72]
  # config.via_per_page = 8
  # config.default_view_type = :table
  # config.id_links_to_resource = false
  # config.full_width_container = false
  # config.full_width_index_view = false
  # config.cache_resources_on_index_view = true
  # config.search_debounce = 300
  # config.view_component_path = "app/components"

  # Where should the user be redirected when he hits the `/avo` url
  config.home_path = "/products"

  config.disabled_features = [:global_search]

  ## == Breadcrumbs ==
  # config.display_breadcrumbs = true
  # config.set_initial_breadcrumbs do
  #   add_breadcrumb "Home", '/avo'
  # end
  #
  config.main_menu = lambda do
    section 'Items', collapsable: true do
      resource :product
    end
  end
end
