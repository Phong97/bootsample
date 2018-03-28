package bootsample.service;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import static org.junit.Assert.*;
import static org.mockito.Matchers.anyInt;
import static org.mockito.Mockito.*;

import bootsample.dao.CandidateRepository;
import bootsample.model.Candidate;
import javassist.NotFoundException;

public class CandidateServiceTest {

	CandidateService candidateService;
	@Mock
	CandidateRepository candidateRepository;

	@Before
	public void setUp() throws Exception {

		MockitoAnnotations.initMocks(this);

		candidateService = new CandidateService(candidateRepository);
	}

	@Test
	public void findCandidateTest() {
		Candidate candidate1 = new Candidate();
		candidate1.setId(17);
		when(candidateRepository.findOne(anyInt())).thenReturn(candidate1);

		Candidate candidateReturned = candidateService.findCandidate(17);
		assertEquals(candidate1, candidateReturned);
	}

	@Test(expected = NotFoundException.class)
	public void getRecipeByIdTestNotFound() throws Exception {
		when(candidateRepository.findOne(anyInt())).thenReturn(null);

		Candidate candidateReturned = candidateService.findCandidate(5);

		if (candidateReturned == null) {
			throw new NotFoundException("Not Found");
		}
	}

	@Test
	public void deleteTest() throws Exception {
		int id= Integer.valueOf(2);
		candidateService.delete(id);
		assertNull(candidateRepository.findOne(id));
	}
}
