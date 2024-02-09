# onDecision

Returns a new schedule that applies the current one but runs the specified
effect for every decision of this schedule. This can be used to create
schedules that log failures, decisions, or computed values.

To import and use `onDecision` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.onDecision
```

**Signature**

```ts
export declare const onDecision: {
  <Out, Env2, X>(
    f: (out: Out, decision: ScheduleDecision.ScheduleDecision) => Effect.Effect<X, never, Env2>
  ): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, Env2, X>(
    self: Schedule<Env, In, Out>,
    f: (out: Out, decision: ScheduleDecision.ScheduleDecision) => Effect.Effect<X, never, Env2>
  ): Schedule<Env | Env2, In, Out>
}
```
