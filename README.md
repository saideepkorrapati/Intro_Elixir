# Myproject

"Group Information"

 Name							UFID
 Saideep Korrapati				9234-8134
 Krishna Chaitanya Uppala		3855-8149
 
 "Instructions"
  
 -->> 	First we create a project using the command
		mix new myproject
	
		This creates our project folder myproject with files
		* creating README.md
		* creating .formatter.exs
		* creating .gitignore
		* creating mix.exs
		* creating config
		* creating config/config.exs
		* creating lib
		* creating lib/myproject.ex
		* creating test
		* creating test/test_helper.exs
		* creating test/myproject_text.exs
	
  -->> 	In the lib folder in myproject.ex file we write our code to implement the project
		We will have a module defined as Myproject
		In this module we specify our functions to run our code
		pro1(); with 2 arguments
		sum1(); with 2 arguments
		main();
	  
		In the main() function we pass the arguments as a list. The arguments are usually in string format by default so to make them as integers we need to parse them.
		The first argument is identified with Enum.at(list,0) for this we use Integer.parse and store it into variable i, similarly for the second argument we do the same
		and store it in the variable j, then we call the function proj1() function with i,j arguments.
	  
		In the pro1() function we pass 2 arguments one is the lis which specifies the list and the second one is the no.of elements to be considered for summation in the list
		Using the Enum.map and Spawn_link we create multiple child processes so that each element of the list is allocated to one process, we send this to the parent process 
		after computing the sum1() using the send, Further the parent receives each process id and its message and prints the result in a sorted order
		
		In the sum1() function we pass 2 arguments to it, one is the element of list and the other is range of numbers to be computed. Firstly using Enum.map is used to find
		the squares of each number and then we use Enum.sum to get the summation of all the squares with in the range. For this summation we find the square root and if it is 
		an integer we return the first element of the list.
	  
 -->>  	In the mix.exs file 
		 
		First we add escript: escript() in the project function
		Later we define this function with out main module in it, This basically helps us in giving arguments in runtime.
  
  
  
  "Execution Steps"

	We have already created our project as myproject
	
	In the terminal we first need to set path to our project using cd myproject
	
	Then we first need to build our project for this we use the command "mix escript.build"
	We get Generated escript myproject with MIX_ENV= dev

	Then we use the command "time ./myproject arg1 arg2" to execute the code which will return our outputs and the system and real times as well.
	
	"Input format" 
			This project takes 2 arguments as input, the first one being the maximum range in which we take the sum of consecutive numbers starting from 1 and the second argument specifies the 
	number of consecutive integers to be taken
	
	"Output format" 
			The output of the project is the first number in the sequence whose sum of squares in the range is a perfect square and it also gives the real, user and system 
	times respectively.
  
  
 QUESTIONS
 
 1. The size of work unit for this problem comes out to be 1, Each process is allocated with a single task here so each worker gets at most 1 process from the master.
 
 2. The Result of Running the program for the input 1000000 4 is empty because we don't have any possible solution for the given possible input.
		
 
 3. The real time for running this project is [0m9.774s]
	The CPU time for running this project is obtained as [System time + User time] which is 
			System Time is [0m1.309s]
			User Time is   [0m27.020s]
			CPU Time is    [0m28.329s]
			
		The Ratio of CPU time / Real time = (28.329/9.774) => 2.898
		
 4.  The largest problem we managed to solve is 10000000 24