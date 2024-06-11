package himedia.dao;

import java.util.List;

public interface GuestBookDao {
	public List<GuestBookVo> getList();   
    public boolean insert(GuestBookVo vo); 
    public boolean delete(String no); 
}
