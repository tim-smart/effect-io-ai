# resetAfter

Return a new schedule that automatically resets the schedule to its initial
state after some time of inactivity defined by `duration`.

To import and use `resetAfter` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.resetAfter
```

**Signature**

```ts
export declare const resetAfter: {
  (duration: Duration.Duration): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, duration: Duration.Duration): Schedule<Env, In, Out>
}
```
