class AuthToken
  AUTH_SECRET = Rails.application.credentials[:JWT_AUTH_SECRET]

  def self.check_token(token)
    decoded_token = JWT.decode(token, AUTH_SECRET, true, { algorithm: 'HS256' })
    return HashWithIndifferentAccess.new decoded_token.first
  end

  def self.generate_token(payload, exp = 30.days.from_now)
    payload[:exp] = exp.to_i
    token = JWT.encode(payload, AUTH_SECRET, 'HS256')
    return token
  end
end