json.extract! expense, :id, :name, :price, :desc, :create_date, :upd_date, :excategory_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
