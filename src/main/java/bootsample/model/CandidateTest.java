package bootsample.model;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class CandidateTest {
	
	Candidate candidate;
    @Before
    public void setUp() throws Exception {
        candidate = new Candidate();
    }
    // Test method getId() 
    @Test
    public void getIdTest() {
        int id = new Integer(111);
        candidate.setId(id);
        assertEquals(id, candidate.getId());
    }
    
    // Test method getEmail() 
    @Test
    public void getEmailTest() {
        String email = new String("Nguyen Chi Trung");
        candidate.setEmail(email);
        assertEquals(email, candidate.getEmail());
    }
    
    // Test method getUniversity() 
    @Test
    public void getUniversityTest() {
        String University = new String("HCMUTE");
        candidate.setUniversity(University);
        assertEquals(University, candidate.getUniversity());
    }
    
}
