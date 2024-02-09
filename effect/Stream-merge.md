# merge

Merges this stream and the specified stream together.

New produced stream will terminate when both specified stream terminate if
no termination strategy is specified.

To import and use `merge` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.merge
```

**Signature**

```ts
export declare const merge: {
  <R2, E2, A2>(
    that: Stream<A2, E2, R2>,
    options?: { readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined } | undefined
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(
    self: Stream<A, E, R>,
    that: Stream<A2, E2, R2>,
    options?: { readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined } | undefined
  ): Stream<A | A2, E | E2, R | R2>
}
```
