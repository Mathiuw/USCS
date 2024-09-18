// ERRADO
/*fun main() {
    
    var x = 4;
    var a = 15;
    var b = 2;
    var y = 8;

    while( (x = a % b) != 0 )
    {
        y += 1;
        b = y + x;
        a = a - 1;
    }

    println("y = $y");
}*/

// CERTO
fun main() 
{
    var x = 4;
    var a = 15;
    var b = 2;
    var y = 8;

    x = a % b;

    while( x != 0 )
    {
        y += 1;
        b = y + x;
        a = a - 1;

        x = a % b;
    }

    println("y = $y");
}