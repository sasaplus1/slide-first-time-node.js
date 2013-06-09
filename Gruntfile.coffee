module.exports = (grunt) ->

  grunt.initConfig
    jade:
      compile:
        files:
          'index.html': ['jade/*.jade']
    stylus:
      compile:
        files:
          'default.css': ['stylus/*.stylus']
    watch:
      files: ['jade/*.jade', 'stylus/*.stylus']
      tasks: ['jade', 'stylus']

  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['jade', 'stylus', 'watch']

  return
