package com.baiyun.service;

import com.baiyun.entity.Register;

import java.util.List;

public interface LleaveService {
    List<Register> selRegisters(Register register);
    int updRstate(Register register);
    int updBstate(Register register);
    int selYaos(Register register);
}