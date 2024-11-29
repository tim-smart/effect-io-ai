# passthrough

Returns a new schedule that passes through the inputs of this schedule.

To import and use `passthrough` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.passthrough
undefined

**Signature**

```ts
export declare const passthrough: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<In, In, R>
```
