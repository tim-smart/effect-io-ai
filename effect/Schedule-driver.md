# driver

Creates a driver to manually control the execution of a schedule.

**Details**

This function returns a `ScheduleDriver`, which allows stepping through a
schedule manually while handling delays and sleeping appropriately. A driver
is useful when you need fine-grained control over how a schedule progresses,
rather than relying on automatic execution.

The returned driver exposes methods for retrieving the current state,
executing the next step, and resetting the schedule when needed.

To import and use `driver` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.driver
```

**Signature**

```ts
export declare const driver: <Out, In, R>(self: Schedule<Out, In, R>) => Effect.Effect<ScheduleDriver<Out, In, R>>
```
