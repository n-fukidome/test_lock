module Schedule
  class MealWork
    def self.feed
      _trigger_all do |species|
        @meal = Meal.create!
        @meal.mune = Menu.create! meal_id: @meal.id, content: 'Banana'
        _serve_meal enterprise
      end
    end

    private
    def self._trigger_all
      Species.all.each do |species|
        begin
          puts 'start each species'
          @breeder = species.breeders.last
          next unless @breeder # next になることはないんはず

          activation_until = species.animals.first.creature.activation_until
          next unless _is_alive? activation_until
          yield species
        rescue => e
          puts '==================error!=================='
          puts e.message
        end
      end
    end

    def self._serve_meal(species)
      ActiveRecord::Base.transaction do
        puts 'start serve'
        # @breeder.prepare meal: @meal

        species.update_activation_until
        @breeder.check_leaving menu: @meal.menu
      end
      puts 'finish serve!!!!!!!'
    rescue => e
      puts '==================error!=================='
      puts e.message
    end

    # アカウントが生きてるかどうかの判定(今回は基本関係ない)
    def self._is_alive?(activation_until)
      activation_until.localtime < DateTime.now.end_of_day && activation_until.localtime > DateTime.now
    end
  end
end