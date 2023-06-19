# takeUpTo

Takes up to max number of values from the queue.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const takeUpTo: {
  (max: number): <A>(self: Dequeue<A>) => Effect.Effect<never, never, Chunk.Chunk<A>>
  <A>(self: Dequeue<A>, max: number): Effect.Effect<never, never, Chunk.Chunk<A>>
}
```
