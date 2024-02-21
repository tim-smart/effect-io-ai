# mergeWith

Merges this stream and the specified stream together to a common element
type with the specified mapping functions.

New produced stream will terminate when both specified stream terminate if
no termination strategy is specified.

To import and use `mergeWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mergeWith
```

**Signature**

```ts
export declare const mergeWith: {
  <A2, E2, R2, A, A3, A4>(
    other: Stream<A2, E2, R2>,
    options: {
      readonly onSelf: (a: A) => A3
      readonly onOther: (a2: A2) => A4
      readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined
    }
  ): <E, R>(self: Stream<A, E, R>) => Stream<A3 | A4, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2, A3, A4>(
    self: Stream<A, E, R>,
    other: Stream<A2, E2, R2>,
    options: {
      readonly onSelf: (a: A) => A3
      readonly onOther: (a2: A2) => A4
      readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined
    }
  ): Stream<A3 | A4, E | E2, R | R2>
}
```
