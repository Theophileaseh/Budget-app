class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def update_transactions_count
    transaction.update(transactions_counter: category.transactions.size)
  end
end
