```verilog
`timescale 1ns/1ps

module logic_gates_tb;

    reg A;
    reg B;

    wire AND_out;
    wire OR_out;
    wire NOT_A;
    wire NAND_out;
    wire NOR_out;
    wire XOR_out;
    wire XNOR_out;

    // Instantiate the logic gates module
    logic_gates uut (
        .A(A),
        .B(B),
        .AND_out(AND_out),
        .OR_out(OR_out),
        .NOT_A(NOT_A),
        .NAND_out(NAND_out),
        .NOR_out(NOR_out),
        .XOR_out(XOR_out),
        .XNOR_out(XNOR_out)
    );

    initial begin

        // Create waveform file
        $dumpfile("logic_gates.vcd");
        $dumpvars(0, logic_gates_tb);

        $display("A B | AND OR NOT NAND NOR XOR XNOR");
        $display("------------------------------------");

        // Test 00
        A = 0;
        B = 0;
        #10;
        $display("%b %b |  %b   %b   %b   %b    %b   %b    %b",
                 A, B, AND_out, OR_out, NOT_A,
                 NAND_out, NOR_out, XOR_out, XNOR_out);

        // Test 01
        A = 0;
        B = 1;
        #10;
        $display("%b %b |  %b   %b   %b   %b    %b   %b    %b",
                 A, B, AND_out, OR_out, NOT_A,
                 NAND_out, NOR_out, XOR_out, XNOR_out);

        // Test 10
        A = 1;
        B = 0;
        #10;
        $display("%b %b |  %b   %b   %b   %b    %b   %b    %b",
                 A, B, AND_out, OR_out, NOT_A,
                 NAND_out, NOR_out, XOR_out, XNOR_out);

        // Test 11
        A = 1;
        B = 1;
        #10;
        $display("%b %b |  %b   %b   %b   %b    %b   %b    %b",
                 A, B, AND_out, OR_out, NOT_A,
                 NAND_out, NOR_out, XOR_out, XNOR_out);

        $finish;
    end

endmodule
```
