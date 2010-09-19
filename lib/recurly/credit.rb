module Recurly
  class Credit < RecurlyBase
    self.element_name = "credit"
    self.prefix = "/accounts/:account_code/"

    def self.list(account_code)
      find(:all, :params => { :account_code => account_code })
    end

    def self.lookup(account_code, credit_id)
      find(credit_id, :params => { :account_code => account_code })
    end

  end
end