# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Size.create([{ name: 'XS Женский', gender_id: '1', g_name: 'Ж', style_id: '1'}, 
	{ name: 'S Женский', gender_id: '1', g_name: 'Ж', style_id: '1' }, 
	{ name: 'M Женский', gender_id: '1', g_name: 'Ж', style_id: '1' }, 
	{ name: 'S Мужской', gender_id: '2', g_name: 'М', style_id: '1' }, 
	{ name: 'M Мужской', gender_id: '2', g_name: 'М', style_id: '1' },
	{ name: 'L Мужской', gender_id: '2', g_name: 'М', style_id: '1'  }, 
	{ name: 'XL Мужской', gender_id: '2', g_name: 'М', style_id: '1' }, 

	{ name: 'XS Унисекс', gender_id: '3', g_name: 'У', style_id: '2'}, 
	{ name: 'S Унисекс', gender_id: '3', g_name: 'У', style_id: '2' }, 
	{ name: 'M Унисекс', gender_id: '3', g_name: 'У', style_id: '2'},

	{ name: 'XS Женский',  gender_id: '4', g_name: 'Ж', style_id: '3'}, 
	{ name: 'S Женский',  gender_id: '4', g_name: 'Ж', style_id: '3' }, 
	{ name: 'M Женский',  gender_id: '4', g_name: 'Ж', style_id: '3' }, 
	{ name: 'L Женский',  gender_id: '4', g_name: 'Ж', style_id: '3' },
	{ name: 'XL Женский',  gender_id: '4', g_name: 'Ж', style_id: '3' },
	{ name: 'XS Мужской',  gender_id: '5', g_name: 'М', style_id: '3'}, 
	{ name: 'S Мужской',  gender_id: '5', g_name: 'М', style_id: '3' }, 
	{ name: 'M Мужской',  gender_id: '5', g_name: 'М', style_id: '3' }, 
	{ name: 'L Мужской',  gender_id: '5', g_name: 'М', style_id: '3' },
	{ name: 'XL Мужской',  gender_id: '5', g_name: 'М', style_id: '3' },

	{ name: 'XS Унисекс',  gender_id: '6', g_name: 'У', style_id: '4'}, 
	{ name: 'S Унисекс',  gender_id: '6', g_name: 'У', style_id: '4' }, 
	{ name: 'M Унисекс',  gender_id: '6', g_name: 'У', style_id: '4' },

	{ name: 'XS Унисекс',  gender_id: '7', g_name: 'У', style_id: '5'}, 
	{ name: 'S Унисекс',  gender_id: '7', g_name: 'У', style_id: '5' }, 
	{ name: 'M Унисекс',  gender_id: '7', g_name: 'У', style_id: '5' }
	 ])
Gender.create([
	{ name: 'Женский', style_id: '1' }, 
	{ name: 'Мужской', style_id: '1' }, 
	{ name: 'Унисекс', style_id: '2' }, 
	{ name: 'Женский', style_id: '3' }, 
	{ name: 'Мужской', style_id: '3' },
	{ name: 'Унисекс', style_id: '4' },
	{ name: 'Женский', style_id: '5' }])
Style.create([{ name: 'Базовая футболка' }, 
	{ name: 'Оверсайзд футболка' }, 
	{ name: 'Свитшот' }, { name: 'Худи' }, 
	{ name: 'Кропшот' }])


AdminUser.create!([{email: 'kdylko@gmail.com', password: '15Tikos@89', password_confirmation: '15Tikos@89'}])