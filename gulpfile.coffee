gulp = require "gulp"
rename = require "gulp-rename"
extend = require "gulp-multi-extend"

gulp.task "prebuild", ->
  gulp.src "./src/*.debian-7.json"
    .pipe extend "./src/base/debian-7.json", null, 2
    .pipe rename (path) ->
      path.basename = path.basename.split(".", 1).join("")
      null
    .pipe gulp.dest "./"


gulp.task "default", ["prebuild"]
