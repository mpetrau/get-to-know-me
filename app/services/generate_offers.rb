class GenerateOffers
  def self.generate_member_offers(user)
    @current_user = user
    if @current_user.offers.length == 0
      create_user_offers
    else
      update_user_offers
    end
  end

  def self.generate_guest_offers(user)
    @current_user = user
    if @current_user.offers.length == 0
      create_user_offers(scope: true)
    end
  end

  def self.generate_deal_offers
    @deal = DealTag.last.deal
    if Offer.where(deal: @deal).empty?
      create_deal_offers
    else
      update_deal_offers
    end
  end

  private

  def self.create_user_offers(options = {})
    deals = options[:scope] ? Deal.first(10) : Deal.all
    deals.each { |deal| Offer.create(user: @current_user, deal: deal, score: Offer::score(@current_user, deal)) }
  end

  def self.update_user_offers
    @current_user.offers.each { |offer| offer.update(score: Offer::score(@current_user, offer.deal))}
  end

  def self.create_deal_offers
    User.all.each do |user|
      Offer.create(deal: @deal, user: user, score: Offer::score(user, @deal))
    end
  end

  def self.update_deal_offers
    Offer.where(deal: @deal).each { |offer| offer.update(score: Offer::score(offer.user, @deal)) }
  end
end
