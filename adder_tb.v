module adder_tb;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire cout;
  reg fault_cout_SA0, fault_cout_SA1;
  adder uut (
    .a(a), .b(b), .cin(cin),
    .sum(sum), .cout(cout) );
  initial begin
    $display("a b cin | sum  cout | fault");
    fault_cout_SA0 = 0;
    fault_cout_SA1 = 0;
    a = 4'b1010; b = 4'b0101; cin = 0; #10;
    display_result();
    a = 4'b1111; b = 4'b1111; cin = 1; #10;
    display_result();
    a = 4'b0000; b = 4'b0000; cin = 1; #10;
    display_result();
    $finish;
  end
  task display_result;
    begin
      if (fault_cout_SA0)
        $display("%b %b   %b  | %b  0     | cout SA0 fault", a, b, cin, sum);
      else if (fault_cout_SA1)
        $display("%b %b   %b  | %b  1     | cout SA1 fault", a, b, cin, sum);
      else
        $display("%b %b   %b  | %b  %b     | OK", a, b, cin, sum, cout);
    end
  endtask
endmodule
