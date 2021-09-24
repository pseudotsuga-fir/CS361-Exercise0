require_relative 'driver'

drivers_file = File.open('driverList.txt')
drivers_list = File.readlines(drivers_file, chomp: true)
drivers_file.close

driver_objects = Array.new

for driver in drivers_list do
    matches = /(?<first>\S+) (?<last>\S+) (?<number>\d+) (?<team>.+)/.match(driver)
    driver_objects.append(Driver.new(matches['first'], matches['last'], matches['number'].to_i, matches['team']))
    if matches['first']+matches['last'] == 'LewisHamilton'
        driver_objects[-1].setFavorite()
    end
end

define_method :driversBylast do
    print("2021 F1 Drivers! - Sorted by Last Name\n================\n")
    drivers_sorted = driver_objects.sort_by { |d| d.getLastName}
    for driver in drivers_sorted
        print(driver.getDriver + "\n")
    end
    print("\n")
end

define_method :driversByNumber do
    print("2021 F1 Drivers! - Sorted by Number\n================\n")
    drivers_sorted = driver_objects.sort_by { |d| d.getNumber}
    for driver in drivers_sorted
        print(driver.getDriver + "\n")
    end
    print("\n")
end


print("2021 F1 Drivers!\n================\n\n")
driversBylast()
driversByNumber()