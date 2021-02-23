require 'pry'


def nyc_pigeon_organizer(data)
    birdHash = {}
    data.each do |trait, values|
        values.each do |value, nameArr|
            nameArr.each do |name|
                if birdHash[name].nil?
                    birdHash[name] = {}
                end
                if birdHash[name][trait].nil?
                    birdHash[name][trait] = [value.to_s]
                else
                    birdHash[name][trait] << value.to_s
                end
            end
        end
    end
    birdHash
end