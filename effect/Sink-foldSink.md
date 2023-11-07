# foldSink

Folds over the result of the sink

To import and use `foldSink` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.foldSink
```

**Signature**

```ts
export declare const foldSink: {
  <R1, R2, E, E1, E2, In, In1 extends In, In2 extends In, L, L1, L2, Z, Z1, Z2>(options: {
    readonly onFailure: (err: E) => Sink<R1, E1, In1, L1, Z1>
    readonly onSuccess: (z: Z) => Sink<R2, E2, In2, L2, Z2>
  }): <R>(self: Sink<R, E, In, L, Z>) => Sink<R1 | R2 | R, E1 | E2, In1 & In2, L1 | L2, Z1 | Z2>
  <R, R1, R2, E, E1, E2, In, In1 extends In, In2 extends In, L, L1, L2, Z, Z1, Z2>(
    self: Sink<R, E, In, L, Z>,
    options: {
      readonly onFailure: (err: E) => Sink<R1, E1, In1, L1, Z1>
      readonly onSuccess: (z: Z) => Sink<R2, E2, In2, L2, Z2>
    }
  ): Sink<R | R1 | R2, E1 | E2, In1 & In2, L1 | L2, Z1 | Z2>
}
```
