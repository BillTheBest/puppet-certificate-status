# This is a class that wraps the certificate signing process,
# created only so that we have an API for signing certs.

require 'puppet'
require 'puppet/indirector'

class Puppet::SSL::CertificateStatus
  extend Puppet::Indirector

  indirects :certificate_status, :terminus_class => :file

  attr_accessor :name, :csr, :certificate

  def initialize(name)
    @name = name
  end
end
