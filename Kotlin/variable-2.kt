fun main() {
    val distanceInKilometers = 100.0  
    val unit = "kilometers"           
    
    val conversionFactor = 0.621371   
    val distanceInMiles = distanceInKilometers * conversionFactor  
    
    
    println("$distanceInKilometers $unit is equivalent to $distanceInMiles miles")
}
