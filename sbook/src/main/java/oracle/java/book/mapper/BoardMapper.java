package oracle.java.book.mapper;

import java.util.List;

/*import org.apache.ibatis.annotations.Select;*/

import oracle.java.book.domain.BoardVO;
import oracle.java.book.domain.Criteria;

public interface BoardMapper {

	/* @Select("Select * from tbl_board where bno > 0") */
	public List<BoardVO> getList();
	
	public void insert(BoardVO board);
	
	public void insertSelectKey(BoardVO board);
	
	public BoardVO read(long bno);

	public int delete(long bno);

	public int update(BoardVO board);
	
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
}
