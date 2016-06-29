puts "generating react-routes.js"

content = "// AUTO-GENERATED FILE - ANY MANUAL CHANGES TO THIS FILE WILL BE OVERWRITTEN WHEN THE APP INITIALIZES\n\n"
content << "var views = {\n"
dirs = Dir["app/assets/javascripts/views/*/"]

dirs.each{ |dir|
  dir = dir[0...-1]
  controller = dir[dir.rindex('/')+1..-1]
  content << "\t#{controller}: {\n"
  actionDirs = Dir["#{dir}/*.js"]
  actionDirs.each{ |actionDir|
    action = actionDir[actionDir.rindex('/')+1..-1]
    action[".js"] = ""
    content << "\t\t#{action}: require('./#{controller}/#{action}'),\n"
  }
  content << "\t},\n"
}
content << "};\n"
content << "export default views"

File.open("app/assets/javascripts/views/react-routes.js", "w") {|f| f.write(content) }
puts "updated react-routes.js"