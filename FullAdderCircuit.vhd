library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Define the entity (full adder) with its input and output ports
entity full_adder is
    Port (
        -- 1-bit input ports
        InPutNumberOne, InPutNumberTwo, InPutCarry : in STD_LOGIC;
        -- 1-bit output ports
        OutPutSum, OutPutCarry : out STD_LOGIC
    );
end entity full_adder;

-- Define the architecture where the full adder's functionality is implemented
architecture Functional of full_adder is
begin
    -- Process block triggered by changes in input signals
    process(InPutNumberOne, InPutNumberTwo, InPutCarry)
    begin
        -- Compute the sum of the inputs using XOR logic
        OutPutSum <= InPutNumberOne XOR InPutNumberTwo XOR InPutCarry;

        -- Compute the carry-out using AND and OR logic
        OutPutCarry <= (InPutNumberOne AND InPutNumberTwo) OR
        (InPutCarry AND (InPutNumberOne XOR InPutNumberTwo));
    end process;
end Functional;