class HelloWorldController < LoggedInController
  layout 'hello_world'.freeze

  def index
    @hello_world_props = { name: 'Loft47' }
  end
end
