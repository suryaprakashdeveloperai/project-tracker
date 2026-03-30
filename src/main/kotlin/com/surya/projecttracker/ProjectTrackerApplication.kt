package com.surya.projecttracker

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class ProjectTrackerApplication

fun main(args: Array<String>) {
    runApplication<ProjectTrackerApplication>(*args)
}
