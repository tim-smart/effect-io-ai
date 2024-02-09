# makeWithState

Constructs a new `Schedule` with the specified `initial` state and the
specified `step` function.

To import and use `makeWithState` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.makeWithState
```

**Signature**

```ts
export declare const makeWithState: <S, Env, In, Out>(
  initial: S,
  step: (
    now: number,
    input: In,
    state: S
  ) => Effect.Effect<readonly [S, Out, ScheduleDecision.ScheduleDecision], never, Env>
) => Schedule<Env, In, Out>
```
