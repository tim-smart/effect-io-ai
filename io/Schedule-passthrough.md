# passthrough

Returns a new schedule that passes through the inputs of this schedule.

To import and use `passthrough` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.passthrough
```

**Signature**

```ts
export declare const passthrough: <Env, Input, Output>(
  self: Schedule<Env, Input, Output>
) => Schedule<Env, Input, Input>
```
