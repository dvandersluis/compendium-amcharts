require 'amcharts.rb'

module Compendium
  module ChartProvider
    # Uses the amcharts.rb gem to provide charting
    class AmCharts < Compendium::AbstractChartProvider
      def initialize(type, data_or_url, params = {}, &setup_proc)
        if data_or_url.is_a?(String)
          url = data_or_url

          @chart = chart_class(type).new([]) do |c|
            c.data_source = { url: url, params: params || {}, method: 'POST' }
          end

          @chart.update_settings(&setup_proc)
        else
          data = data_or_url
          @chart = chart_class(type).new(data, &setup_proc)
        end
      end

      def render(template, container)
        template.amchart(chart, container)
      end

    private

      def chart_class(type)
        ::AmCharts::Chart.const_get(type.to_s.titlecase)
      end
    end
  end
end