module UsStatesHelper
	# helper that populates drop down menu with list of all 50 U.S. states
	def us_states
	    [
	      ['Alabama', 'AL'],
	      ['Alaska', 'AK'],
	      ['Arizona', 'AZ'],
	      ['Arkansas', 'AR'],
	      ['California', 'CA'],
	      ['Colorado', 'CO'],
	      ['Connecticut', 'CT'],
	      ['Delaware', 'DE'],
	      ['District of Columbia', 'DC'],
	      ['Florida', 'FL'],
	      ['Georgia', 'GA'],
	      ['Hawaii', 'HI'],
	      ['Idaho', 'ID'],
	      ['Illinois', 'IL'],
	      ['Indiana', 'IN'],
	      ['Iowa', 'IA'],
	      ['Kansas', 'KS'],
	      ['Kentucky', 'KY'],
	      ['Louisiana', 'LA'],
	      ['Maine', 'ME'],
	      ['Maryland', 'MD'],
	      ['Massachusetts', 'MA'],
	      ['Michigan', 'MI'],
	      ['Minnesota', 'MN'],
	      ['Mississippi', 'MS'],
	      ['Missouri', 'MO'],
	      ['Montana', 'MT'],
	      ['Nebraska', 'NE'],
	      ['Nevada', 'NV'],
	      ['New Hampshire', 'NH'],
	      ['New Jersey', 'NJ'],
	      ['New Mexico', 'NM'],
	      ['New York', 'NY'],
	      ['North Carolina', 'NC'],
	      ['North Dakota', 'ND'],
	      ['Ohio', 'OH'],
	      ['Oklahoma', 'OK'],
	      ['Oregon', 'OR'],
	      ['Pennsylvania', 'PA'],
	      ['Puerto Rico', 'PR'],
	      ['Rhode Island', 'RI'],
	      ['South Carolina', 'SC'],
	      ['South Dakota', 'SD'],
	      ['Tennessee', 'TN'],
	      ['Texas', 'TX'],
	      ['Utah', 'UT'],
	      ['Vermont', 'VT'],
	      ['Virginia', 'VA'],
	      ['Washington', 'WA'],
	      ['West Virginia', 'WV'],
	      ['Wisconsin', 'WI'],
	      ['Wyoming', 'WY']
	    ]
	end

	def activity_type
	    [
	      ['Appearance or Signing', 'Appearance or Signing'],
	      ['Attraction', 'Attraction'],
	      ['Camp, Trip, or Retreat', 'Camp, Trip, or Retreat'],
	      ['Class, Training, or Workshop', 'Class, Training, or Workshop'],
	      ['Concert or Performance', 'Concert or Performance'],
	      ['Conference', 'Conference'],
	      ['Convention', 'Convention'],
	      ['Dinner or Gala', 'Dinner or Gala'],
	      ['Festival or Fair', 'Festival or Fair'],
	      ['Game or Competition ', 'Game or Competition '],
	      ['Meeting or Networking Event', 'Meeting or Networking Event'],
	      ['Other', 'Other'],
	      ['Party or Social Gathering', 'Party or Social Gathering'],
	      ['Race or Endurance Event', 'Race or Endurance Event'],
	      ['Rally ', 'Rally'],
	      ['Screening', 'Screening'],
	      ['Seminar or Talk', 'Seminar or Talk'],
	      ['Tour', 'Tour'],
	      ['Tournament', 'Tournament'],
	      ['Tradeshow, Consumer Show or Expo ', 'Tradeshow, Consumer Show or Expo ']
	    ]
	end

	def activity_topic
		[
	      ['Auto, Boat, & Air', 'Auto, Boat, & Air'],
	      ['Business & Professional', 'Business & Professional'],
	      ['Charity & Causes', 'Charity & Causes'],
	      ['Community & Culture', 'Community & Culture'],
	      ['Family & Education', 'Family & Education'],
	      ['Fashion & Beauty', 'Fashion & Beauty'],
	      ['Film, Media, & Entertainment', 'Film, Media, & Entertainment'],
	      ['Food & Drink', 'Food & Drink'],
	      ['Government & Politics', 'Government & Politics '],
	      ['Health & Wellness', 'Health & Wellness'],
	      ['Hobbies & Special Interest', 'Hobbies & Special Interest'],
	      ['Home & Lifestyle', 'Home & Lifestyle'],
	      ['Music', 'Music'],
	      ['Other', 'Other'],
	      ['Performing & Visual Arts', 'Performing & Visual Arts'],
	      ['Religion & Spirituality', 'Religion & Spirituality'],
	      ['Science & Technology', 'Science & Technology'],
	      ['Seasonal & Holiday', 'Seasonal & Holiday'],
	      ['Sports & Fitness', 'Sports & Fitness'],
	      ['Travel & Outdoor', 'Travel & Outdoor']
	    ]
	end

	def interests
		[
	      ['Music', 'Music'],
	      ['Dance', 'Dance'],
	      ['Art', 'Art'],
	      ['Film', 'Film'],
	      ['Fashion', 'Fashion'],
	      ['Health', 'Health'],
	      ['Beauty', 'Beauty'],
	      ['Cooking', 'Cooking'],
	      ['Food', 'Food'],
	      ['Nightlife', 'Nightlife'],
	      ['Relaxation', 'Relaxation'],
	      ['Outdoors', 'Outdoors'],
	      ['Sports', 'Sports'],
	      ['Drinking', 'Drinking'],
	      ['Animals', 'Animals'],
	      ['Learning', 'Learning']
	    ]
	end

	def outing_purpose
		[
	      ['Family', 'Family'],
	      ['Co-workers', 'Co-workers'],
	      ['New In Town', 'New In Town'],
	      ['Friends', 'Friends'],
	      ['Significant Other', 'Significant Other'],
	      ['Solo', 'Solo']
	    ]
	end

	def moods
		[
	      ['Energetic', 'Energetic'],
	      ['Celebratory', 'Celebratory'],
	      ['Playful', 'Playful'],
	      ['Classy', 'Classy'],
	      ['Relaxed', 'Relaxed'],
	      ['Hungry', 'Hungry'],
	      ['Romantic', 'Romantic'],
	      ['Professional', 'Professional']
	    ]
	end
end