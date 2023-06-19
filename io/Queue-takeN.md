# takeN

Takes the specified number of elements from the queue. If there are fewer
than the specified number of elements available, it suspends until they
become available.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const takeN: {
  (n: number): <A>(self: Dequeue<A>) => Effect.Effect<never, never, Chunk.Chunk<A>>
  <A>(self: Dequeue<A>, n: number): Effect.Effect<never, never, Chunk.Chunk<A>>
}
```
