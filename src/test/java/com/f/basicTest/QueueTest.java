package com.f.basicTest;

import com.f.algs4.basic.Queue;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Test;

public class QueueTest {
    private ObjectMapper objectMapper = new ObjectMapper();

    @Test
    public void queueOperate() {
        Queue<Integer> queue = new Queue<Integer>();
        queue.enqueue(1);
        queue.enqueue(2);
        queue.enqueue(3);
        queue.enqueue(4);
        queue.enqueue(5);
        queue.dequeue();
        try {
            System.out.println(objectMapper.writeValueAsString(queue.iterator()));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
    }
}
