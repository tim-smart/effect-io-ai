# spaced

Returns a schedule that recurs continuously, each repetition spaced the
specified duration from the last run.

To import and use `spaced` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.spaced
```

**Signature**

```ts
export declare const spaced: (duration: Duration.Duration) => Schedule<never, unknown, number>
```
