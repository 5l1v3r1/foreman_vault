# frozen_string_literal: true

module ForemanVault
  module Macros
    def vault_secret(vault_connection_name, secret_path)
      vault = VaultConnection.find_by(name: vault_connection_name)
      vault.fetch_secret(secret_path) if vault&.token_valid?
    end
  end
end