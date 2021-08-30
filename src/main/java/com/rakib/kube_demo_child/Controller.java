package com.rakib.kube_demo_child;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/child")
public class Controller {

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<?> getChildData() {
        return ResponseEntity.ok().body("From Child Application.");
    }
}
