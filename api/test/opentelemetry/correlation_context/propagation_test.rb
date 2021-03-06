# frozen_string_literal: true

# Copyright 2019 OpenTelemetry Authors
#
# SPDX-License-Identifier: Apache-2.0

require 'test_helper'

describe OpenTelemetry::CorrelationContext::Propagation do
  describe '#text_extractor, #rack_extractor' do
    it 'returns an instance of TextExtractor' do
      %i[text_extractor rack_extractor].each do |extractor_method|
        extractor = OpenTelemetry::CorrelationContext::Propagation.send(extractor_method)
        _(extractor).must_be_instance_of(
          OpenTelemetry::CorrelationContext::Propagation::TextExtractor
        )
      end
    end
  end

  describe '#rack_injector, #rack_injector' do
    it 'returns an instance of TextInjector' do
      %i[rack_injector rack_injector].each do |injector_method|
        injector = OpenTelemetry::CorrelationContext::Propagation.send(injector_method)
        _(injector).must_be_instance_of(
          OpenTelemetry::CorrelationContext::Propagation::TextInjector
        )
      end
    end
  end
end
