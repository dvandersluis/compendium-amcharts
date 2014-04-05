require 'compendium/amcharts/version'
require 'amcharts.rb'
require 'compendium'
require 'compendium/abstract_chart_provider'

module Compendium
  module ChartProvider
    autoload :AmCharts, 'compendium/chart_provider/amcharts'
  end

  class AbstractChartProvider
    def self.find_chart_provider
      return :AmCharts if defined?(AmCharts)
      super
    end
  end
end
