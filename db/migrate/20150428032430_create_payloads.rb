Sequel.migration do
  change do

    create_table :payloads do
      primary_key :id
      String :url
      String :referrer
      Date :created_at
      String :hash
    end

  end
end
