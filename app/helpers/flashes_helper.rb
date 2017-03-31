module FlashesHelper
  FLASH_CLASS = { alert: "danger"，notice: "success",warning: "warning"}.freeze

  def flash_class(key)
    FALSH_CALSS.fetch key.to_sym, key
  end

  def user_facing_flashes
    flash.to_hash.slice "alert", "notice", "warning"
  end
end
