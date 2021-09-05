module ApplicationHelper
  def hcd(text)
    Hcipher::Cipher.decrypt(text, HCIPHER_KEY) if text.present? && HCIPHER_KEY.present?
  end
end
