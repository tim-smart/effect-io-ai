# delayed

Returns a new schedule with the specified effectfully computed delay added
before the start of each interval produced by this schedule.

To import and use `delayed` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.delayed
```

**Signature**

```ts
export declare const delayed: {
  (
    f: (duration: Duration.Duration) => Duration.DurationInput
  ): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(
    self: Schedule<Env, In, Out>,
    f: (duration: Duration.Duration) => Duration.DurationInput
  ): Schedule<Env, In, Out>
}
```
