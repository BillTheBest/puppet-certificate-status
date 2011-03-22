#!/usr/bin/env ruby

require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper.rb')
require 'puppet/ssl/certificate_status'

describe Puppet::SSL::CertificateStatus do
  before do
    @signer = Puppet::SSL::CertificateStatus.new("mysigner")
    Puppet::SSL::CertificateAuthority.stubs(:ca?).returns true
  end

  it "should have a name" do
    @signer.name.should == "mysigner"
  end
end
