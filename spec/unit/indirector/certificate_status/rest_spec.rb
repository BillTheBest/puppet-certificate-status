#!/usr/bin/env ruby

require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper.rb')
require 'puppet/ssl/certificate_status'

describe "Puppet::SSL::CertificateStatus::Rest" do
  before do
    @terminus = Puppet::SSL::CertificateStatus::Rest.indirection.terminus(:rest)
  end

  it "should be a terminus on CertificateStatus" do
    @terminus.should be_instance_of(Puppet::SSL::CertificateStatus::Rest)
  end
end
