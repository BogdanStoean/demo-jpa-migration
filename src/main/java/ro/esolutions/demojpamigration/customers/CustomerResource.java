package ro.esolutions.demojpamigration.customers;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/customers/")
public class CustomerResource {

    private final CustomerRepository customerRepository;

    @GetMapping("/")
    public ResponseEntity<List<Customer>> listAll() {
        return ResponseEntity.ok(customerRepository.findAll());
    }
}


