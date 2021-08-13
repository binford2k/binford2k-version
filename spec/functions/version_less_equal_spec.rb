# frozen_string_literal: true
require 'spec_helper'

describe 'version::less_equal' do
  it { is_expected.to run.with_params('1.0', '2.0').and_return(true) }
  it { is_expected.to run.with_params('1.0', '1.0').and_return(true) }
  it { is_expected.to run.with_params('2.0', '1.0').and_return(false) }

  it { is_expected.to run.with_params(1.0, 2.0).and_return(true) }
  it { is_expected.to run.with_params(1.0, 1.0).and_return(true) }
  it { is_expected.to run.with_params(2.0, 1.0).and_return(false) }

  it { is_expected.to run.with_params(1.0,  '2.0').and_return(true) }
  it { is_expected.to run.with_params('1.0', 1.0).and_return(true) }
  it { is_expected.to run.with_params(2.0,  '1.0').and_return(false) }

  it { is_expected.to run.with_params(1, 2).and_return(true) }
  it { is_expected.to run.with_params(1, 1).and_return(true) }
  it { is_expected.to run.with_params(2, 1).and_return(false) }

  it { is_expected.to run.with_params([1.0], [1.0]).and_raise_error(StandardError) }
  it { is_expected.to run.with_params([2.0], [1.0]).and_raise_error(StandardError) }
  it { is_expected.to run.with_params(nil).and_raise_error(StandardError) }
end
