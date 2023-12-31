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
    that: Stream<R2, E2, A2>,
    options?: { readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined }
  ): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(
    self: Stream<R, E, A>,
    that: Stream<R2, E2, A2>,
    options?: { readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined }
  ): Stream<R | R2, E | E2, A | A2>
}
```
