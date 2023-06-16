# refineTagOrDieWith

Keeps only the error matching the specified tag, and terminates the fiber
with the rest, using the specified function to convert the `E` into a defect.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.refineTagOrDieWith`.

### Signature

```typescript
export declare const refineTagOrDieWith: {
  <R, E extends { _tag: string }, A, K extends E['_tag'] & string>(k: K, f: (e: Exclude<E, { _tag: K }>) => unknown): (
    self: Effect<R, E, A>
  ) => Effect<R, Extract<E, { _tag: K }>, A>
  <R, E extends { _tag: string }, A, K extends E['_tag'] & string>(
    self: Effect<R, E, A>,
    k: K,
    f: (e: Exclude<E, { _tag: K }>) => unknown
  ): Effect<R, Extract<E, { _tag: K }>, A>
}
```
