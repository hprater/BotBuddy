package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Component
public class JdbcBotTransactionDao implements BotTransactionDao{
    private final JdbcTemplate jdbcTemplate;


    public JdbcBotTransactionDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Map<String, String> getQuestionAnswerMap() {
        Map<String, String> questionAnswerMap = new HashMap<>();
        String sql = "SELECT category, response FROM responses";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                String category = results.getString("category");
                String response = results.getString("response");
                questionAnswerMap.put(category, response);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return questionAnswerMap;
    }
}
