# summarized

Summarizes a effect by computing some value before and after execution, and
then combining the values to produce a summary, together with the result of
execution.

To import and use `summarized` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.summarized
```

**Signature**

```ts
export declare const summarized: {
  <B, E2, R2, C>(
    summary: Effect<B, E2, R2>,
    f: (start: B, end: B) => C
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<[C, A], E2 | E, R2 | R>
  <A, E, R, B, E2, R2, C>(
    self: Effect<A, E, R>,
    summary: Effect<B, E2, R2>,
    f: (start: B, end: B) => C
  ): Effect<[C, A], E2 | E, R2 | R>
}
```
