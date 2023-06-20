# stop

A schedule that does not recur, it just stops.

To import and use `stop` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.stop
```

**Signature**

```ts
export declare const stop: (_: void) => Schedule<never, unknown, void>
```
