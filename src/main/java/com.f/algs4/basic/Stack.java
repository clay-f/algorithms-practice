package com.f.algs4.basic;

import java.util.Iterator;

public class Stack<Item> implements Iterable<Item> {
    private Node first;
    private Integer N = 0;

    private class Node {
        Item item;
        Node next;

        public Node() {

        }

        public Node(Item item) {
            this.item = item;
            this.next = null;
        }
    }

    public void push(Item item) {
        if (item == null) return;
        Node oldFirst = first;
        first = new Node(item);
        first.next = oldFirst;
        N++;
    }

    public Item pop() {
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

    public boolean empty() {
        return N == 0;
    }

    public Integer size() {
        return N;
    }
}
