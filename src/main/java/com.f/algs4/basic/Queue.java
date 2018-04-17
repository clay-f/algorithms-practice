package com.f.algs4.basic;

import java.util.Iterator;
import java.util.ListIterator;

public class Queue<Item> implements Iterable<Item> {
    private Node first;
    private Node last;
    private int N = 0;

    private class Node {
        Node next;
        Item item;

        public Node() {

        }

        public Node(Item item) {
            this.item = item;
            this.next = null;
        }
    }

    public int size() {
        return N;
    }

    public boolean empty() {
        return N > 0;
    }

    public void enqueue(Item item) {
        Node oldlast = last;
        last = new Node(item);
        if (oldlast == null) {
            first = last;
        } else {
            oldlast.next = last;
        }
        N++;
    }

    public Item dequeue() {
        Item item = first.item;
        first = first.next;
        return item;
    }

    @Override
    public Iterator<Item> iterator() {
        return new ListIterator();
    }

    private class ListIterator implements Iterator<Item> {
        private Node current = first;

        @Override
        public boolean hasNext() {
            return current != null;
        }

        @Override
        public Item next() {
            Item item = current.item;
            current = current.next;
            return item;
        }
    }
}
