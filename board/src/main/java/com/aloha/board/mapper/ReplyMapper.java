package com.aloha.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.aloha.board.dto.Reply;

@Mapper
public interface ReplyMapper {
    
    public List<Reply> list() throws Exception;
    public Reply select(int no) throws Exception;
    public int insert(Reply reply) throws Exception;
    public int update(Reply reply) throws Exception;
    public int delte(int no) throws Exception;
}
