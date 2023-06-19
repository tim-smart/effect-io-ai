# pollUpTo

Dequeues up to `n` elements from the queue.

Returns a `List` of up to `n` elements.

Part of the `MutableQueue` module, imported from `@effect/data/MutableQueue`.

**Signature**

```ts
export declare const pollUpTo: {
  (n: number): <A>(self: MutableQueue<A>) => Chunk.Chunk<A>
  <A>(self: MutableQueue<A>, n: number): Chunk.Chunk<A>
}
```
