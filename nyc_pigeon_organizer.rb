def nyc_pigeon_organizer(pd)
  org_pigs = {}
  pd.each_pair do |trait, attrib|
    attrib.each_pair do |value, name_array|
      name_array.each do |name|
        if !org_pigs[name]
          org_pigs[name] = {}
        end
        if !org_pigs[name][trait]
          org_pigs[name][trait] = [value.to_s]
        else
          org_pigs[name][trait] << value.to_s
        end
      end
    end
  end
  org_pigs
end