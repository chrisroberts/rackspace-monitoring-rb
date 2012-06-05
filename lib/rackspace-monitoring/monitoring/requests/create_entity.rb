module Fog
  module Monitoring
    class Rackspace
      class Real

        def create_entity(label, options = {})
          data = {}
          data['label'] = label
          if options['metadata']
            data['metadata'] = options['metadata']
          end
          if options['ip_addresses']
            data['ip_addresses'] = options['ip_addresses']
          end
          request(
            :body     => Fog::JSON.encode(data),
            :expects  => [200, 202],
            :method   => 'POST',
            :path     => 'entities'
          )
        end
      end
    end
  end
end

