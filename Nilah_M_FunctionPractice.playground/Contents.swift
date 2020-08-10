import UIKit

func main(){
    let jacket = 199.00
    print("The original price of the jacket is: $" + String(jacket))
    
    // call the clearance function passing it the jacket price, storing the result in a variable - the jacket should be 50% off - print the clearance price
    let clearancePrice = clearance(jacket)
    print("The discounted price is: $" + String(clearancePrice))
    
    // call the thirty function, pass it the clearance price
    let salesPrice = thirty(clearancePrice)
   
    // print the new price with the additional discount
    print("The sales price is: $" + String(salesPrice))
    
    // call the sales tax function, pass it the price with the additional discount. Make sales tax 6% (0.06)
    let salesTaxAmount = salesTax(salesPrice)
    
    // print the sales tax amount
    print("The sales tax amount is: $" + String(salesTaxAmount))
    
    //call the grand total passing it 2 arguments the discounted total and sales tax, add the two together and return the total
    let grandTotal = purchasePrice(salesPrice, salesTaxAmount: salesTaxAmount)
    // print the total
    print("The grand total price of the jacket is: $" + String(grandTotal))
}

func clearance(_ jacket: Double)-> Double{
    // add an argument in main and clearance with the initial price of the jacket, return the clearance price (jacket *.5 - 50% off)
    let discountPrice = jacket * 0.50
    return discountPrice
}


func thirty(_ clearancePrice: Double)-> Double{
    // complete the function to recieve calculate 30% off of the clearnance price (price * 0.3)
    let newPrice = clearancePrice * 0.70
    return newPrice

}


func salesTax(_ salesPrice: Double)-> Double{
    // complete the function to calculate the sales tax (price * 0.06)
    let salesTP = salesPrice * 0.06
    return salesTP

}

func purchasePrice(_ salesPrice: Double, salesTaxAmount: Double)-> Double{
    // complete the function to calcualte the purchase price by passing the price and the sales tax, adding them together and returning the total
    let finalPrice = salesPrice + salesTaxAmount
    return finalPrice

}

main()

