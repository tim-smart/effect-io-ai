# catchTag

Recovers from the specified tagged error.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.catchTag`.

### Signature

```typescript
export declare const catchTag: {
  <K extends E['_tag'] & string, E extends { _tag: string }, R1, E1, A1>(
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Effect<R1, E1, A1>
  ): <R, A>(self: Effect<R, E, A>) => Effect<R1 | R, E1 | Exclude<E, { _tag: K }>, A1 | A>
  <R, E extends { _tag: string }, A, K extends E['_tag'] & string, R1, E1, A1>(
    self: Effect<R, E, A>,
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Effect<R1, E1, A1>
  ): Effect<R | R1, E1 | Exclude<E, { _tag: K }>, A | A1>
}
```
