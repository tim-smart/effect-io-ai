# raceWithCapacity

Like `raceWith`, but with a configurable `capacity` parameter.

To import and use `raceWithCapacity` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.raceWithCapacity
```

**Signature**

```ts
export declare const raceWithCapacity: {
  <R2, E2, In2, L2, Z2, E, Z, Z3, Z4>(
    that: Sink<R2, E2, In2, L2, Z2>,
    leftDone: (exit: Exit.Exit<E, Z>) => MergeDecision.MergeDecision<R2, E2, Z2, E2 | E, Z3>,
    rightDone: (exit: Exit.Exit<E2, Z2>) => MergeDecision.MergeDecision<R2, E, Z, E2 | E, Z4>,
    capacity: number
  ): <R, In, L>(self: Sink<R, E, In, L, Z>) => Sink<R2 | R, E2 | E, In & In2, L2 | L, Z3 | Z4>
  <R, In, L, R2, E2, In2, L2, Z2, E, Z, Z3, Z4>(
    self: Sink<R, E, In, L, Z>,
    that: Sink<R2, E2, In2, L2, Z2>,
    leftDone: (exit: Exit.Exit<E, Z>) => MergeDecision.MergeDecision<R2, E2, Z2, E2 | E, Z3>,
    rightDone: (exit: Exit.Exit<E2, Z2>) => MergeDecision.MergeDecision<R2, E, Z, E2 | E, Z4>,
    capacity: number
  ): Sink<R | R2, E2 | E, In & In2, L | L2, Z3 | Z4>
}
```