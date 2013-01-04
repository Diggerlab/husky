module ApplicationHelper
	def fb_locale(geo)
		case geo.to_s
		when 'zh'
			'zh_CN'
		when 'ja'
			'ja_JP'
		else 
			'en_US'
		end
	end
end
