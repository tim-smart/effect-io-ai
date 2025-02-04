# isSchedule

Returns `true` if the specified value is a `Schedule`, `false` otherwise.

To import and use `isSchedule` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.isSchedule
```

**Signature**

```ts
export declare const isSchedule: (u: unknown) => u is Schedule<unknown, never, unknown>
```
