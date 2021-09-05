class SecretNote < ApplicationRecord
  before_save :hcipher_encrpyt

  def hcipher_encrpyt
    self.note = Hcipher::Cipher.encrypt(self.note, HCIPHER_KEY) if self.note.present?
  end
end
