# encoding: utf-8

require 'ulam_spiral'

describe UlamSpiral do

  it "should properly initialize class" do
    expect { UlamSpiral.new }.to_not raise_error
  end


  it "should properly generate table of first 2 numbers and with first number 5" do
    ulam = UlamSpiral.new(first_number: 5, last_number: 7)
    ulam.generate_spiral
    ulam.spiral.should eq(
      [
        [nil, 7],
        [5, nil]
      ]
    )
  end

  it "should properly generate table of first 2 numbers" do
    ulam = UlamSpiral.new(last_number: 2)
    ulam.generate_spiral
    ulam.spiral.should eq(
      [
        [nil, nil],
        [1, 2]
      ]
    )
  end

  it "should properly generate table of first 10 numbers" do
    ulam = UlamSpiral.new(last_number: 10)
    ulam.generate_spiral
    ulam.spiral.should eq(
      [
        [nil, nil, nil, nil],
        [5, nil, 3, nil],
        [nil, 1, 2, nil],
        [7, nil, nil, nil]
      ]
    )
  end

  it "should properly generate table of first 5 numbers" do
    ulam = UlamSpiral.new(last_number: 5)
    ulam.generate_spiral
    ulam.spiral.should eq(
      [
        [5, nil, 3],
        [nil, 1, 2],
        [nil, nil, nil]
      ]
    )
  end

  it "should properly generate table of first 19 numbers" do
    ulam = UlamSpiral.new(last_number: 19)
    ulam.generate_spiral
    ulam.spiral.should eq(
      [
        [17, nil, nil, nil, 13],
        [nil, 5, nil, 3, nil],
        [19, nil, 1, 2, 11],
        [nil, 7, nil, nil, nil],
        [nil, nil, nil, nil, nil]
      ]
    )
  end
end
