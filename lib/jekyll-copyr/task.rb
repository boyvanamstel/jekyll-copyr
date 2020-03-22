# frozen_string_literal: true

module Jekyll
  module Copyr
    class Task
      attr_accessor :from, :to

      def initialize(task_hash = {})
        @from = File.expand_path task_hash.fetch "from", nil
        @to = File.expand_path task_hash.fetch "to", nil
      end
    end
  end
end
