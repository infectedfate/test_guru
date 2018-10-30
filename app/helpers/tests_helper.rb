module TestsHelper
  def test_level(test)
    case test.level
    when 1 then t('difficulty_level.easy')
    when 2 then t('difficulty_level.medium')
    when 3 then t('difficulty_level.hard')
    else t('difficulty_level.hero')
    end
  end

  def test_time_limit(test)
    test.time_limit ? t('.time_limit', time: test.time_limit) : t('.unlimited')
  end
end
