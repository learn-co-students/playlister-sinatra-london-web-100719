module Slug 
    module InstanceMethods 
        def slug 
            self.name.downcase.gsub(" ", "-")
        end
    end  

    module ClassMethods 
        def unslug(slug)
            the_string = slug.gsub("-", " ")
            the_string.split.map {|word| word.capitalize}.join(" ")
        end

        def find_by_slug(slug)
            string_name = unslug(slug).downcase 
            my_instance = self.all.find {|instance| instance.name.downcase == string_name}
            instance = find_by(id: my_instance.id)


            #self.find_by(name: string_name)
        end
    end 
end
