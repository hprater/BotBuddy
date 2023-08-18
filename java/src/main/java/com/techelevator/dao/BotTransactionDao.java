package com.techelevator.dao;

import com.techelevator.model.BotTransaction;

import java.util.Map;

public interface BotTransactionDao {
    Map<String, String> getQuestionAnswerMap();
}
