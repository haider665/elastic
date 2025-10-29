package com.example.demo;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author mojib.haider
 * @since 10/29/25
 */
@Slf4j
@RestController
@RequestMapping("/home")
public class HomeController {

    @GetMapping
    public ResponseEntity<?> home() {
        log.info("LOGS :: Home Controller ");
        return new ResponseEntity<>("done", HttpStatus.OK);
    }
}
