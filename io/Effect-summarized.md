# summarized

Summarizes a effect by computing some value before and after execution, and
then combining the values to produce a summary, together with the result of
execution.

To import and use `summarized` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.summarized
```

**Signature**

```ts
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
