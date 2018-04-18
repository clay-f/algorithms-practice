package com.f.basicTest;

import com.f.algs4.basic.Stack;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Test;

public class StackTest {
    ObjectMapper objectMapper = new ObjectMapper();
    @Test
    public void testStack() {
        Stack<String> stack = new Stack<String>();
        stack.push("a");
        stack.push("b");
        stack.push("c");
        stack.push("d");
        stack.push("e");
        stack.pop();
        try {
            System.out.println("stack val: " + objectMapper.writeValueAsString(stack.iterator()));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
    }
}
