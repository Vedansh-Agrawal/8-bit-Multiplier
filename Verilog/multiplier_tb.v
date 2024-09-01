`timescale 10ns/100ps

module multiplier_tb;

reg a0,a1,a2,a3,b0,b1,b2,b3;
wire p0,p1,p2,p3,p4,p5,p6,c;

multiplier UUT(a0,a1,a2,a3,b0,b1,b2,b3,p0,p1,p2,p3,p4,p5,p6,c);

initial
    begin
        $dumpfile("multiplier_tb.vcd");
        $dumpvars(0,multiplier_tb);

        a0 = 0;
        a1 = 0;
        a2 = 0;
        a3 = 0;
        b0 = 0;
        b1 = 0;
        b2 = 0;
        b3 = 0;
    end

initial 
begin
     #1
     a0 = 1;
     a1 = 0;
     a2 = 1;
     a3 = 0;
     b0 = 1;
     b1 = 0;
     b2 = 1;
     b3 = 0;

     #1
     a0 = 0;
     a1 = 1;
     a2 = 0;
     a3 = 1;
     b0 = 0;
     b1 = 1;
     b2 = 0;
     b3 = 1;

     #1
     a0 = 1;
     a1 = 0;
     a2 = 0;
     a3 = 1;
     b0 = 1;
     b1 = 0;
     b2 = 0;
     b3 = 1;

     #1
     a0 = 0;
     a1 = 1;
     a2 = 1;
     a3 = 0;
     b0 = 0;
     b1 = 1;
     b2 = 1;
     b3 = 0;

     #1
     a0 = 0;
     a1 = 1;
     a2 = 1;
     a3 = 0;
     b0 = 1;
     b1 = 0;
     b2 = 0;
     b3 = 1;

     #1
     a0 = 0;
     a1 = 1;
     a2 = 0;
     a3 = 1;
     b0 = 1;
     b1 = 0;
     b2 = 0;
     b3 = 1;

     #1
     a0 = 1;
     a1 = 1;
     a2 = 0;
     a3 = 0;
     b0 = 0;
     b1 = 1;
     b2 = 0;
     b3 = 0;

      #1
     a0 = 0;
     a1 = 0;
     a2 = 1;
     a3 = 1;
     b0 = 0;
     b1 = 1;
     b2 = 1;
     b3 = 1;

      #1
     a0 = 1;
     a1 = 1;
     a2 = 1;
     a3 = 1;
     b0 = 1;
     b1 = 1;
     b2 = 1;
     b3 = 1;

      #1
     a0 = 0;
     a1 = 0;
     a2 = 0;
     a3 = 0;
     b0 = 0;
     b1 = 0;
     b2 = 0;
     b3 = 0;
    
end

endmodule
