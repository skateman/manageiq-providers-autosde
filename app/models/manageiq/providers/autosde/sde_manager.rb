class ManageIQ::Providers::Autosde::SdeManager < ManageIQ::Providers::SdeManager
  require_nested :MetricsCapture
  require_nested :MetricsCollectorWorker
  require_nested :Refresher
  require_nested :RefreshWorker
  require_nested :RefreshParser
  require_nested :AutosdeClient


  # @return [ManageIQ::Providers::Autosde::PhysicalInfraManager::AutosdeClient]
  def autosde_client
    if @autosde_client.nil?
      @autosde_client = self.class.raw_connect(address)
    end
    @autosde_client
  end

  # is this just for verifying credentials for when you create a new instance?
  # todo (per gregoryb): need to enable users to provide client_id and secret_id
  def verify_credentials(auth_type = nil, options = {})
    begin
      connect
    rescue => err
      raise MiqException::MiqInvalidCredentialsError, err.message
    end

    true
  end

  # is this just for verifying credentials for when you create a new instance?
  def connect(options = {})
    raise MiqException::MiqHostError, "No credentials defined" if missing_credentials?(options[:auth_type])

    auth_token = authentication_token(options[:auth_type])
    host       = options[:host] || address
    self.class.raw_connect(host).login
  end

  def self.validate_authentication_args(params)
    # return args to be used in raw_connect
    return [params[:default_userid], ManageIQ::Password.encrypt(params[:default_password])]
  end

  # is this just for verifying credentials for when you create a new instance?
  # @return AutosdeClient
  def self.raw_connect(host)
    ManageIQ::Providers::Autosde::SdeManager::AutosdeClient.new(host: host)
  end

  def self.hostname_required?
    # TODO: ExtManagementSystem is validating this
    false
  end

  def self.ems_type
    @ems_type ||= "autosde".freeze
  end

  def self.description
    @description ||= "Autosde".freeze
  end
end

