import Foundation


class Conversions{
    
    
    //-------------------------Length Conversions----------------------------------------------------------
    
    
    //converts meters to miles
    func metresToMiles(_ metres: Float) -> Float{
        return Float(metres/1609.344).roundTo()
    }
    //converts meter to centimeter
    func metresToCm(_ metres: Float) -> Float{
        return Float(metres*100).roundTo()
    }
    func metresToMm(_ metres: Float) -> Float{
        return Float(metres*1000).roundTo()
    }
    func metresToYards(_ metres: Float) -> Float{
        return Float(metres*1.093613).roundTo()
    }
    func metresToInches(_ metres: Float) -> Float{
        return Float(metres*39.37007874).roundTo()
    }
    
    //
    func milesToMetres(_ miles: Float) -> Float{
        return Float(miles*1609.344).roundTo()
    }
    func milesToCm(_ miles: Float) -> Float{
        return Float(miles*160934.4).roundTo()
    }
    func milesToMm(_ miles: Float) -> Float{
        return Float(miles * 1.609e+6).roundTo()
    }
    func milesToYards(_ miles: Float) -> Float{
        return Float(miles*1760).roundTo()
    }
    func milesToInches(_ miles: Float) -> Float{
        return Float(miles*63360).roundTo()
    }
    //
    func cmToMetres(_ cm: Float) -> Float{
        return Float(cm/100).roundTo()
    }
    func cmToMiles(_ cm: Float) -> Float{
        return Float(cm/160934.4).roundTo()
    }
    func cmToMm(_ cm: Float) -> Float{
        return Float(cm/10).roundTo()
    }
    func cmToYards(_ cm: Float) -> Float{
        return Float(cm/91.44).roundTo()
    }
    func cmToInches(_ cm: Float) -> Float{
        return Float(cm/2.54).roundTo()
    }
    //
    func mmToMetres(_ mm: Float) -> Float{
        return Float(mm/1000).roundTo()
    }
    func mmToMiles(_ mm: Float) -> Float{
        return Float(mm/1.609e+6).roundTo()
    }
    func mmToCm(_ mm: Float) -> Float{
        return Float(mm / 10).roundTo()
    }
    func mmToYards(_ mm: Float) -> Float{
        return Float(mm / 914.4).roundTo()
    }
    func mmToInches(_ mm: Float) -> Float{
        return Float(mm / 25.4).roundTo()
    }
    //
    func yardsToMetres(_ yards: Float) -> Float{
        return Float(yards / 1.094).roundTo()
    }
    func yardsToMiles(_ yards: Float) -> Float{
        return Float(yards / 1760).roundTo()
    }
    func yardsToCm(_ yards: Float) -> Float{
        return Float(yards * 91.44).roundTo()
    }
    func yardsToMm(_ yards: Float) -> Float{
        return Float(yards * 914.4).roundTo()
    }
    func yardsToInches(_ yards: Float) -> Float{
        return Float(yards * 36).roundTo()
    }
    //
    func inchesToMetres(_ inches: Float) -> Float{
        return Float(inches / 39.37).roundTo()
    }
    func inchesToMiles(_ inches: Float) -> Float{
        return Float(inches / 63360).roundTo()
    }
    func inchesToCm(_ inches: Float) -> Float{
        return Float(inches * 2.54).roundTo()
    }
    func inchesToMm(_ inches: Float) -> Float{
        return Float(inches * 25.4).roundTo()
    }
    func inchesToYards(_ inches: Float) -> Float{
        return Float(inches / 36).roundTo()
    }
    
    
    
    //-------------------------Weight Conversions----------------------------------------------------------
    
    func kgToGrams(_ kg: Float) -> Float{
        return Float(kg * 1000).roundTo()
    }
    func kgToOunces(_ kg: Float) -> Float{
        return Float(kg * 35.274).roundTo()
    }
    func kgToPounds(_ kg: Float) -> Float{
        return Float(kg * 2.205).roundTo()
    }
    func kgToStone(_ kg: Float) -> Float{
        return Float(kg / 6.35).roundTo()
    }
    //
    func gramsToKg(_ grams: Float) -> Float{
        return Float(grams / 1000).roundTo()
    }
    func gramsToOunces(_ grams: Float) -> Float{
        return Float(grams / 28.35).roundTo()
    }
    func gramsToPounds(_ grams: Float) -> Float{
        return Float(grams / 453.592).roundTo()
    }
    func gramsToStone(_ grams: Float) -> Float{
        return Float(grams / 6350.293).roundTo()
    }
    //
    func ouncesToKg(_ ounces: Float) -> Float{
        return Float(ounces / 35.274).roundTo()
    }
    func ouncesToGrams(_ ounces: Float) -> Float{
        return Float(ounces * 28.3495).roundTo()
    }
    func ouncesToPounds(_ ounces: Float) -> Float{
        return Float(ounces / 16).roundTo()
    }
    func ouncesToStone(_ ounces: Float) -> Float{
        return Float(ounces / 224).roundTo()
    }
    //
    func poundsToKg(_ pounds: Float) -> Float{
        return Float(pounds / 2.205).roundTo()
    }
    func poundsToGrams(_ pounds: Float) -> Float{
        return Float(pounds * 453.592).roundTo()
    }
    func poundsToOunces(_ pounds: Float) -> Float{
        return Float(pounds * 16).roundTo()
    }
    func poundsToStone(_ pounds: Float) -> Float{
        return Float(pounds / 14).roundTo()
    }
    //
    func stoneToKg(_ stone: Float) -> Float{
        return Float(stone * 6.35).roundTo()
    }
    func stoneToGrams(_ stone: Float) -> Float{
        return Float(stone * 6350.293).roundTo()
    }
    func stoneToOunces(_ stone: Float) -> Float{
        return Float(stone * 224).roundTo()
    }
    func stoneToPounds(_ stone: Float) -> Float{
        return Float(stone * 14).roundTo()
    }
    
    //-------------------------Temperature Conversions----------------------------------------------------------
    
    func celciusToFahrenheit(_ celcius: Float) -> Float{
        return Float((celcius * 9/5) + 32).roundTo()
    }
    func celciusToKelvin(_ celcius: Float) -> Float{
        return Float(celcius + 273.15).roundTo()
    }
    //
    func fahrenheitToCelsius(_ fahrenheit: Float) -> Float{
        return Float((fahrenheit - 32) * 5/9).roundTo()
    }
    func fahrenheitToKelvin(_ fahrenheit: Float) -> Float{
        return Float((fahrenheit  - 32) * 5/9 + 273.15).roundTo()
    }
    //
    func kelvinToCelsius(_ kelvin: Float) -> Float{
        return Float(kelvin  - 273.15).roundTo()
    }
    func kelvinToFahrenheit(_ kelvin: Float) -> Float{
        return Float((kelvin - 273.15) * 9/5 + 32).roundTo()
    }
    
    //-------------------------Speed Conversions----------------------------------------------------------
    
    func metrePerSecondToKmPerHour(_ metrePerSecond: Float) -> Float{
        return Float(metrePerSecond * 3.6).roundTo()
    }
    func metrePerSecondToMilesPerHour(_ metrePerSecond: Float) -> Float{
        return Float(metrePerSecond * 2.237).roundTo()
    }
    func metrePerSecondToNauticalMilesPerHour(_ metrePerSecond: Float) -> Float{
        return Float(metrePerSecond * 1.944).roundTo()
    }
    //
    func kmPerHourToMetrePerSecond(_ kmPerHour: Float) -> Float{
        return Float(kmPerHour / 3.6).roundTo()
    }
    func kmPerHourToMilesPerHour(_ kmPerHour: Float) -> Float{
        return Float(kmPerHour / 1.609).roundTo()
    }
    func kmPerHourToNauticalMilesPerHour(_ kmPerHour: Float) -> Float{
        return Float(kmPerHour / 1.852).roundTo()
    }
    //
    func milesPerHourToMetrePerSecond(_ milesPerHour: Float) -> Float{
        return Float(milesPerHour / 2.237).roundTo()
    }
    func milesPerHourToKmPerHour(_ milesPerHour: Float) -> Float{
        return Float(milesPerHour * 1.609).roundTo()
    }
    func milesPerHourToNauticalMilesPerHour(_ milesPerHour: Float) -> Float{
        return Float(milesPerHour / 1.151).roundTo()
    }
    //
    func nauticalMilesPerHourToMetrePerSecond(_ nauticalMilesPerHour: Float) -> Float{
        return Float(nauticalMilesPerHour / 1.944).roundTo()
    }
    func nauticalMilesPerHourToKmPerHour(_ nauticalMilesPerHour: Float) -> Float{
        return Float(nauticalMilesPerHour * 1.852).roundTo()
    }
    func nauticalMilesPerHourToMilesPerHour(_ nauticalMilesPerHour: Float) -> Float{
        return Float(nauticalMilesPerHour * 1.151).roundTo()
    }
    
    //-------------------------Volume Conversions----------------------------------------------------------
    
    func gallonToLitre(_ gallon: Float) -> Float{
        return Float(gallon*3.785).roundTo()
    }
    func gallonToUKPint(_ gallon: Float) -> Float{
        return Float(gallon*6.661).roundTo()
    }
    func gallonToFluidOunces(_ gallon: Float) -> Float{
        return Float(gallon * 128).roundTo()
    }
    func gallonToMillilitre(_ gallon: Float) -> Float{
        return Float(gallon * 3785.412).roundTo()
    }
    //
    func litreToGallon(_ litre: Float) -> Float{
        return Float(litre / 3.785).roundTo()
    }
    func litreToUKPint(_ litre: Float) -> Float{
        return Float(litre * 1.76).roundTo()
    }
    func litreToFluidOunces(_ litre: Float) -> Float{
        return Float(litre * 35.195).roundTo()
    }
    func litreToMillilitre(_ litre: Float) -> Float{
        return Float(litre * 1000).roundTo()
    }
    //
    func ukPintToGallon(_ ukPint: Float) -> Float{
        return Float(ukPint / 8).roundTo()
    }
    func ukPintToLitre(_ ukPint: Float) -> Float{
        return Float(ukPint / 1.76).roundTo()
    }
    func ukPintToFluidOunces(_ ukPint: Float) -> Float{
        return Float(ukPint * 19.215).roundTo()
    }
    func ukPintToMillilitre(_ ukPint: Float) -> Float{
        return Float(ukPint * 568.261).roundTo()
    }
    //
    func fluidOuncesToGallon(_ fluidOunces: Float) -> Float{
        return Float(fluidOunces / 160).roundTo()
    }
    func fluidOuncesToLitre(_ fluidOunces: Float) -> Float{
        return Float(fluidOunces / 35.195).roundTo()
    }
    func fluidOuncesToUKPint(_ fluidOunces: Float) -> Float{
        return Float(fluidOunces / 20).roundTo()
    }
    func fluidOuncesToMillilitre(_ fluidOunces: Float) -> Float{
        return Float(fluidOunces * 28.413).roundTo()
    }
    //
    func millilitreToGallon(_ millilitre: Float) -> Float{
        return Float(millilitre / 4546.09).roundTo()
    }
    func millilitreToLitre(_ millilitre: Float) -> Float{
        return Float(millilitre / 1000).roundTo()
    }
    func millilitreToUKPint(_ millilitre: Float) -> Float{
        return Float(millilitre / 568.261).roundTo()
    }
    func millilitreToFluidOunces(_ millilitre: Float) -> Float{
        return Float(millilitre * 29.574).roundTo()
    }

}
