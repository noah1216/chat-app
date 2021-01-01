FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
# afterメソッドは任意の処理の後に指定の処理を実行することができます
    # after(:build) とすることで、インスタンスがbuildされた後に指定の処理を実行
    # io: File.openで設定したパスのファイル
    # （public/images/test_image.png）を、test_image.pngというファイル名で保