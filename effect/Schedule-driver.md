# driver

Returns a driver that can be used to step the schedule, appropriately
handling sleeping.

To import and use `driver` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.driver
undefined

**Signature**

```ts
export declare const driver: <Out, In, R>(self: Schedule<Out, In, R>) => Effect.Effect<ScheduleDriver<Out, In, R>>
```
