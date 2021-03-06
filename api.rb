require 'grape'
require_relative 'record_collection'


  class RecordAPI < Grape::API
    format :json
    content_type :txt, "text/plain"


    #for testing the api is online
    resource :records do
      records = RecordCollection.new

      post do
        content_type "text/plain"
        record = Record.new(record = CSVParser.parse_record(params.record))
        RecordCollection.add_record(record.to_hash)
      end

      get do
        records.all
      end

      get :gender do
        records.gender
      end

      get :birthday do
        records.birthday
      end

      get :name do
        records.name
      end

    end


  end

