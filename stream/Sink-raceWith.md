# raceWith

Runs both sinks in parallel on the input, using the specified merge
function as soon as one result or the other has been computed.

To import and use `raceWith` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.raceWith
```

**Signature**

```ts
export declare const raceWith: {
  <R2, E2, In2, L2, Z2, E, Z, Z3, Z4>(options: {
    readonly other: Sink<R2, E2, In2, L2, Z2>
    readonly onSelfDone: (exit: Exit.Exit<E, Z>) => MergeDecision.MergeDecision<R2, E2, Z2, E2 | E, Z3>
    readonly onOtherDone: (exit: Exit.Exit<E2, Z2>) => MergeDecision.MergeDecision<R2, E, Z, E2 | E, Z4>
    readonly capacity?: number | undefined
  }): <R, In, L>(self: Sink<R, E, In, L, Z>) => Sink<R2 | R, E2 | E, In & In2, L2 | L, Z3 | Z4>
  <R, In, L, R2, E2, In2, L2, Z2, E, Z, Z3, Z4>(
    self: Sink<R, E, In, L, Z>,
    options: {
      readonly other: Sink<R2, E2, In2, L2, Z2>
      readonly onSelfDone: (exit: Exit.Exit<E, Z>) => MergeDecision.MergeDecision<R2, E2, Z2, E2 | E, Z3>
      readonly onOtherDone: (exit: Exit.Exit<E2, Z2>) => MergeDecision.MergeDecision<R2, E, Z, E2 | E, Z4>
      readonly capacity?: number | undefined
    }
  ): Sink<R | R2, E2 | E, In & In2, L | L2, Z3 | Z4>
}
```
