module.exports = (grunt) ->

  grunt.initConfig
    coffee:
      compile:
        options:
          join: true
        files:
          'index.js': ['coffee/*.coffee']
    jade:
      compile:
        files:
          'index.html': ['jade/*.jade']
    stylus:
      compile:
        files:
          'index.css': ['stylus/*.stylus']
    watch:
      files: ['coffee/*.coffee', 'jade/*.jade', 'stylus/*.stylus']
      tasks: ['coffee', 'jade', 'stylus']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['coffee', 'jade', 'stylus', 'watch']

  return
