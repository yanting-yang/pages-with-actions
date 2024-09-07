module RenderIndex
  class Generator < Jekyll::Generator
    def generate(site)
      site.static_files.each do |static_file|
        if static_file.relative_path == "/index.md"
          base = static_file.instance_variable_get("@base")
          dir  = static_file.instance_variable_get("@dir")
          name = static_file.instance_variable_get("@name")
          site.pages << Jekyll::Page.new(site, base, dir, name)
          site.static_files.delete(static_file)
          break
        end
      end
    end
  end
end
