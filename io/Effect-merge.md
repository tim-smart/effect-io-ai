# merge

Returns a new effect where the error channel has been merged into the
success channel to their common combined type.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const merge: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, E | A>
```
