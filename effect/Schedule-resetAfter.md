# resetAfter

Return a new schedule that automatically resets the schedule to its initial
state after some time of inactivity defined by `duration`.

To import and use `resetAfter` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.resetAfter
```

**Signature**

```ts
export declare const resetAfter: {
  (duration: Duration.DurationInput): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, duration: Duration.DurationInput): Schedule<Env, In, Out>
}
```
