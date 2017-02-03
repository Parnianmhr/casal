require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe "#available?" do

    let!(:existent_booking) { create :booking, starts_at: 2.days.from_now, ends_at: 6.days.from_now }

    context "is available" do
      subject {room.available?(1.days.from_now, 2.days.from_now)}
      it "returns true" do
        expect(subject).to be true
      end
    end

    context "is available" do
      subject { booking.available?(7.days.from_now, 8.days.from_now) }

      it "returns true" do
        expect(subject).to be true
      end
    end

    context "is not available" do
      subject { booking.available?(1.days.from_now, 3.days.from_now) }

      it "returns false" do
        expect(subject).to be false
      end
    end

    context "is not available" do
      subject { booking.available?(4.days.from_now, 10.days.from_now) }

      it "returns false" do
        expect(subject).to be false
      end
    end
  end
end
