# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Fam do
  include_context 'tempdir'

  let(:input_pathname) { tempdir_pathname.join('family-in.json') }
  let(:output_pathname) { tempdir_pathname.join('family-out.json') }

  describe '.add_person' do
    subject do
      described_class.add_person(
        input_path: input_pathname,
        output_path: output_pathname,
        person_name: name
      )
    end

    context 'with a new name' do
      let(:name) { 'Adam' }

      it 'persists the person' do

      end

      it 'returns a success' do
        expect(subject).to be_success('Added person: Adam')
      end
    end

    context 'with an existing name' do
      let(:name) { 'Adam' }

      before do
        described_class.add_person(
          input_path: input_pathname,
          output_path: output_pathname,
          person_name: name
        )
      end

      it 'returns a failure' do
        expect(subject).to eq('foo')
      end
    end
  end

  describe '.add_parents' do

  end

  describe '.get_person' do

  end

  describe '.get_parents' do

  end

  describe '.get_grandparents' do

  end
end
