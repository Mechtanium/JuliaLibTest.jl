sayhi = name -> "Dear $name, I'm Julia and I'd like to say hi!"

greetme = name -> "Hello $name, nice to meet you. I'm Julia"

greetmeinspanish = nombre -> "Hola senor $nombre. Como estas. Me llamo Julia y tengo una hermana, se llama Julietta"

normal_reg = (A, b) -> A\b

my_reg = (A, b) -> (transpose(A)*A)\(transpose(A)*b)

function (\)(A::AbstractMatrix, )