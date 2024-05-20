class oil;
    
    rand bit [3:0] rand_no;
    rand bit [15:0] arr[8];


    constraint er{

        foreach(arr[i])
        $countones(arr[i])==1;

    }

endclass

module olk;
    
    bit [15:0] lp[8];
    oil te;

    initial begin
    
    te=new();

    
        repeat(10) begin
        assert(te.randomize());

        
        foreach(lp[i]) begin
        lp[i]=te.arr[i];
        #1;
        end

       end
    $stop;
    end

endmodule