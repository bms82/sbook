package oracle.java.book.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import oracle.java.book.domain.Criteria;
import oracle.java.book.domain.ReplyVO;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes = {oracle.java.book.config.RootConfig.class})
@Log4j
public class ReplyMapperTests {

	private Long[] bnoArr = {360445L, 360446L, 360447L, 360448L, 360449L};
	
	@Setter(onMethod_ = {@Autowired})
	private ReplyMapper mapper;
	
	@Test
	public void testMapper() {
		log.info(mapper);
	}

	@Test
	public void testCreate() {
		IntStream.rangeClosed(1, 10).forEach(i -> {
			
			ReplyVO vo = new ReplyVO();
			
			vo.setBno(bnoArr[i % 5]);
			vo.setReply("댓글 테스트" + i);
			vo.setReplyer("replyer " + i);
			
			mapper.insert(vo);
		});
	}
	
	@Test
	public void testRead() {
		
		Long targetRno = 5L;
		
		ReplyVO vo = mapper.read(targetRno);
		
		log.info(vo);
	}
	
	@Test
	public void testDelete() {
		
		Long targetRno = 1L;
		
		mapper.delete(targetRno);
	}
	
	@Test
	public void testUpdate() {
		
		Long targetRno = 10L;
		
		ReplyVO vo = mapper.read(targetRno);
		
		vo.setReply("Update reply ");
		
		int count = mapper.update(vo);
		
		log.info("UPDATE COUNT : " + count);
	}
	
	@Test
	public void testList() {
		Criteria cri = new Criteria();
		List<ReplyVO> replies = mapper.getListWithPaging(cri, bnoArr[0]);
		
		replies.forEach(reply -> log.info(reply));
	}
	
}
