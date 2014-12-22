module Fullhouse
  class Server < Sinatra::Base


    get('/') do
    render(:erb, :index, { :layout => :default_layout })
    end

    get('/kids_or_parents') do
      render(:erb, :kids_or_parents, { :layout => :default_layout })
    end

    get('/parent') do
      render(:erb, :parent, { :layout => :default_layout })
    end

    get('/cute_or_problem') do
      render(:erb, :cute_or_problem, { :layout => :default_layout })
    end

    get('/problem') do
      render(:erb, :problem, { :layout => :default_layout })
    end

    get('/misunderstanding') do
      render(:erb, :misunderstanding, { :layout => :default_layout })
    end

    get('/credits') do
      render(:erb, :credits, { :layout => :default_layout })
    end





  end
end
