# summarized

Summarizes a effect by computing some value before and after execution, and
then combining the values to produce a summary, together with the result of
execution.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.summarized`.

### Signature

```typescript
export declare const summarized: {
  <R2, E2, B, C>(summary: Effect<R2, E2, B>, f: (start: B, end: B) => C): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, [C, A]>
  <R, E, A, R2, E2, B, C>(self: Effect<R, E, A>, summary: Effect<R2, E2, B>, f: (start: B, end: B) => C): Effect<
    R | R2,
    E | E2,
    [C, A]
  >
}
```
