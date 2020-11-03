package oracle.java.book.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import oracle.java.book.domain.Criteria;
import oracle.java.book.domain.ReplyVO;

public interface ReplyMapper {

	public int insert(ReplyVO vo);
	
	public ReplyVO read(Long bno);
	
	public int delete(Long rno);
	
	public int update(ReplyVO vo);
	
	public List<ReplyVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("bno") Long bno);
	
}
