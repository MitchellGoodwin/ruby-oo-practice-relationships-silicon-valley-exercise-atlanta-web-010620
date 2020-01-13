class Startup
    attr_reader :name, :founder, :domain
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.find_by_founder(name)
        all.find{|startup| startup.name == name}
    end

    def self.domains
        all.map{|startup| startup.domain}
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def funding_rounds
        FundingRound.all.select{|round| round.startup == self}
    end

    def num_funding_rounds
        self.funding_rounds.size
    end

    def total_funds
        self.funding_rounds.map{|round| round.investment}.sum
    end

    def investors
        self.funding_rounds.map{|round| round.venture_capitalist}.uniq
    end

    def big_investors
        self.investors & VentureCapitalist.tres_commas_club
    end
end
