defmodule Langxpay.NumbersTest do
 use ExUnit.Case

 alias Langxpay.Numbers

 describe "sum_from_file/1" do
    test "correct filename" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "incorrect filename" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "invalid file"}}

      assert response == expected_response
    end
 end
end