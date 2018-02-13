# frozen_string_literal: true

RSpec.describe Flattener do
  let(:param) { [[1,2,[3]],4] }
  let(:flattener) { described_class.new(param) }
  let(:invalid_flattener) { Flattener.new([[1,2,[3]],4,'a']) }

  it { expect(flattener).to have_attributes(array: param) }

  describe "#valid?" do
    context "when valid param is passed" do
      it "returns true for array" do
        expect(flattener.valid?).to be true
      end

      it "returns true if array consists of integers" do
        expect(flattener.valid?).to be true
      end
    end

    context "when invalid param is passed" do
      let(:invalid_flattener_with_string) { Flattener.new("somthing") }	
      it "returns false for non array param" do
        expect(invalid_flattener_with_string.valid?).to be false
      end

      it "returns false if array not consists of integers" do
        expect(invalid_flattener.valid?).to be false
      end
    end
  end

  describe "#process" do
    context "when valid array is passed" do
      it "flatens given array" do
        expect(flattener.process).to eq([1,2,3,4])
      end
    end

    context "when invalid array is passed" do
      it "raises argument error" do
        expect { invalid_flattener.process }.to raise_error(ArgumentError)
      end
    end
  end
end
