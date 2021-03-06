package oracle.java.book.service;

import java.util.List;

import oracle.java.book.domain.Criteria;
import oracle.java.book.domain.ReplyPageDTO;
import oracle.java.book.domain.ReplyVO;

public interface ReplyService {

	public int register(ReplyVO vo);
	
	public ReplyVO get(Long rno);
	
	public int modify(ReplyVO vo);
	
	public int remove(Long rno);
	
	public List<ReplyVO> getList(Criteria cri, Long bno);
	
	public ReplyPageDTO getListPage(Criteria cri, Long bno);
	
}
