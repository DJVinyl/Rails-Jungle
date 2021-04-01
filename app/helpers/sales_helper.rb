module SalesHelper
  def active_sale?
    Sale.active.any?
  end

  def currentSale
    Sale.currentSale
  end
end
