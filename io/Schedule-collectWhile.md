# collectWhile

A schedule that recurs as long as the condition f holds, collecting all
inputs into a list.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const collectWhile: <A>(f: Predicate<A>) => Schedule<never, A, Chunk.Chunk<A>>
```
