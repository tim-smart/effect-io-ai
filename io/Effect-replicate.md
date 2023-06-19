# replicate

Replicates the given effect `n` times.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const replicate: (n: number) => <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>[]
```
