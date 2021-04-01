class Sale < ActiveRecord::Base

  def self.active
    where('sales.starts_on <= ? AND sales.ends_on >= ?', 
    Date.current, Date.current)
  end

  def self.currentSale
    # where('sales.starts_on <= ? AND sales.ends_on >= ?', 
    # Date.current, Date.current).find()

    active.first
    # all.select { |m| m.field == active }
  end

  def finished?
    ends_on < Date.current
  end

  def upcoming?
    starts_on > Date.current
  end

  def active?
    !finished? && !upcoming?
  end

end
