# allSuccesses

Evaluate and run each effect in the structure and collect the results,
discarding results from failed effects.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const allSuccesses: <R, E, A>(as: Iterable<Effect<R, E, A>>) => Effect<R, never, A[]>
```
