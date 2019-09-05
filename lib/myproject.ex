defmodule Myproject do        #Main module
	def pro1(lis,b) do		  # Function for spawning processes
		me = self()
		lis
		|> Enum.map(fn (a) ->
	    spawn_link fn -> (send me, { self(), sum1(a, b)}) end   #Spawns multiple processes and sends the computation result to the parent
	    end)

        |> Enum.map(fn (pid) ->								#Result is Received and printed here
            receive do
                { ^pid, result } ->
			        if result do
						IO.inspect result
                    end
                end
		   end)
    end

    def sum1(i,b) do									#Function where sum of squares is computed and square root of it is computed
        s=Enum.sum(Enum.map(i..b+i-1,&(&1*&1)))
        z=:math.sqrt(s)
        if z == Float.floor(z) do
        i
        end
    end

    
    def main(args\\[]) do								#Main function which is used to take the arguments 
        list= args
        {i,""} = Integer.parse(Enum.at(list,0))
        {j,""} = Integer.parse(Enum.at(list,1))
        pro1(1..i,j)
    end

end