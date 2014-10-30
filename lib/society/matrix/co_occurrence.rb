require 'json'
require 'pry'

module Society

  module Matrix

    class CoOccurrence

      include Society::Matrix::Core

      def to_hash
        {
          nodes: nodes.map{ |name| {name: name, group: 1} },
          links: edges.map do |edge|
            {
              source: nodes.index(edge.from),
              target: nodes.index(edge.to),
              value: 1
            }
          end.reject{ |link| link[:target].blank? }
        }
      end

    end

  end

end
