class Signer < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      Signer.create! row.to_hash
    end
  end
end
