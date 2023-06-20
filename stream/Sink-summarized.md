# summarized

Summarize a sink by running an effect when the sink starts and again when
it completes.

To import and use `summarized` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.summarized
```

**Signature**

```ts
export declare const summarized: {
  <R2, E2, Z2, Z3>(summary: Effect.Effect<R2, E2, Z2>, f: (start: Z2, end: Z2) => Z3): <R, E, In, L, Z>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E2 | E, In, L, readonly [Z, Z3]>
  <R, E, In, L, Z, R2, E2, Z2, Z3>(
    self: Sink<R, E, In, L, Z>,
    summary: Effect.Effect<R2, E2, Z2>,
    f: (start: Z2, end: Z2) => Z3
  ): Sink<R | R2, E | E2, In, L, readonly [Z, Z3]>
}
```
