# asUnit

Returns a new schedule that maps the output of this schedule to unit.

To import and use `asUnit` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.asUnit
```

**Signature**

```ts
export declare const asUnit: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<void, In, R>
```
