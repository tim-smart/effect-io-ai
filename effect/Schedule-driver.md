# driver

Returns a driver that can be used to step the schedule, appropriately
handling sleeping.

To import and use `driver` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.driver
```

**Signature**

```ts
export declare const driver: <Env, In, Out>(
  self: Schedule<Env, In, Out>
) => Effect.Effect<never, never, ScheduleDriver<Env, In, Out>>
```
