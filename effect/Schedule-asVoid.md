# asVoid

Returns a new schedule that maps the output of this schedule to unit.

To import and use `asVoid` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.asVoid
```

**Signature**

```ts
export declare const asVoid: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<void, In, R>
```
