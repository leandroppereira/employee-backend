
package com.example.employee;

import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/employee")
public class EmployeeController {

    @GetMapping("/{id}")
    public Map<String, Object> getEmployee(@PathVariable("id") Long id) {
        return Map.of(
                "id", id,
                "name", "Employee " + id,
                "role", "Developer",
                "status", "ACTIVE"
        );
    }
}
