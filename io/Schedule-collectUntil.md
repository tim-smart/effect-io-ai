# collectUntil

A schedule that recurs until the condition f fails, collecting all inputs
into a list.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const collectUntil: <A>(f: Predicate<A>) => Schedule<never, A, Chunk.Chunk<A>>
```
