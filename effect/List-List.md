## List

Represents an immutable linked list of elements of type `A`.

A `List` is optimal for last-in-first-out (LIFO), stack-like access patterns.
If you need another access pattern, for example, random access or FIFO,
consider using a collection more suited for that other than `List`.

**Signature**

```ts
type List<A> = Cons<A> | Nil<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L49)

Since v2.0.0