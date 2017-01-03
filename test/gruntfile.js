'use strict';

module.exports = function (grunt) {

	grunt.loadNpmTasks('grunt-contrib-jasmine');

	grunt.initConfig({
		jasmine: {
			unit: {
				options: {
					specs: [
						'unit/*Spec.js'
					],
					template: require('grunt-template-jasmine-requirejs'),
					templateOptions: {
						requireConfigFile: '../test/karma.conf.js',
						requireConfig: {
							baseUrl: '../app/js',
							paths: {
								'angular-mocks': '../test/node_modules/angular-mocks/angular-mocks'
							},
							shim: {
								'angular-mocks': ['angular']
							},
							deps: ['']
						}
					},
					summary: true
				}
			}
		}
	});
};
