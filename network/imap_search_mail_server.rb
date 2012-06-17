require 'net/imap'

class Net::IMAP
	def get_msg_info(msg_sequence_num)
		# code we used above
		fetch_result = fetch(msg_sequence_num, '(UID ENVELOPE)')
		envelope = fetch_result[0].attr['ENVELOPE']
		uid = fetch_result[0].attr['UID']
		info = {'UID'     => uid,
			'Date'    => envelope.date,
			'From'    => envelope.from[0].name,
			'To'      => envelope.to[0].name,
			'Subject' => envelope.subject}
	end
end

conn.search(['BEFORE', '01-Jan-2006',
						'SINCE', '01-Jan-2000']).each do |sequence|
	conn.get_msg_info(sequence).each {|key, val| puts "#{key}: #{val}" }
end
