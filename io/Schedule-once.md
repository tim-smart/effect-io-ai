# once

A schedule that recurs one time.

To import and use `once` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.once
```

**Signature**

```ts
export declare const once: (_: void) => Schedule<never, unknown, void>
```