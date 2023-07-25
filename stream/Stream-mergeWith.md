# mergeWith

Merges this stream and the specified stream together to a common element
type with the specified mapping functions.

New produced stream will terminate when both specified stream terminate if
no termination strategy is specified.

To import and use `mergeWith` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mergeWith
```

**Signature**

```ts
export declare const mergeWith: {
  <R2, E2, A2, A, A3, A4>(
    other: Stream<R2, E2, A2>,
    options: {
      readonly onSelf: (a: A) => A3
      readonly onOther: (a2: A2) => A4
      readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined
    }
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A3 | A4>
  <R, E, R2, E2, A2, A, A3, A4>(
    self: Stream<R, E, A>,
    other: Stream<R2, E2, A2>,
    options: {
      readonly onSelf: (a: A) => A3
      readonly onOther: (a2: A2) => A4
      readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined
    }
  ): Stream<R | R2, E | E2, A3 | A4>
}
```
