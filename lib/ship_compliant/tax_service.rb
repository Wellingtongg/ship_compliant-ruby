module ShipCompliant
  # == ShipCompliant::TaxService
  #
  # TaxService gives access about tax rates
  #
  class TaxService

    def self.get_tax_rate(data)
      camel_cased_keys = data.deep_transform_keys { |key| key.to_s.camelize }
      result = ShipCompliant.client.call(:get_tax_rate, camel_cased_keys)
    end

  end
end