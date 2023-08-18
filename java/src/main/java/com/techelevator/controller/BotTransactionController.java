package com.techelevator.controller;

import com.techelevator.dao.BotTransactionDao;
import com.techelevator.model.BotTransaction;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.io.IOException;


@RestController
@PreAuthorize("isAuthenticated()")
@CrossOrigin
public class BotTransactionController {
    private BotTransactionDao botTransactionDao;

    public BotTransactionController(BotTransactionDao botTransactionDao) {
        this.botTransactionDao = botTransactionDao;
    }

    @RequestMapping(path = "/question", method = RequestMethod.POST)
    @PreAuthorize("hasAnyRole('ROLE_ADMIN, ROLE_USER')")
    public String createTransaction(@Valid @RequestBody BotTransaction transaction) throws IOException {
        BotTransaction botMethod = new BotTransaction();
        return botMethod.getResponse(transaction.getQuestionOrResponse(), botTransactionDao.getQuestionAnswerMap());
    }
}

