package himedia.dao;

import java.util.List;

public interface GuestBookDao {
	public List<GuestBookVo> getList();  
	GuestBookVo get(Long no);
    public boolean insert(GuestBookVo vo); 
    public boolean delete(String pass, Long no); 
}
