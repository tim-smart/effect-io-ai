# summarized

Summarize a sink by running an effect when the sink starts and again when
it completes.

To import and use `summarized` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.summarized
```

**Signature**

```ts
export declare const summarized: {
  <A2, E2, R2, A3>(
    summary: Effect.Effect<A2, E2, R2>,
    f: (start: A2, end: A2) => A3
  ): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<[A, A3], In, L, E2 | E, R2 | R>
  <A, In, L, E, R, A2, E2, R2, A3>(
    self: Sink<A, In, L, E, R>,
    summary: Effect.Effect<A2, E2, R2>,
    f: (start: A2, end: A2) => A3
  ): Sink<[A, A3], In, L, E | E2, R | R2>
}
```
