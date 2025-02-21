# identity

Creates a schedule that always recurs, passing inputs directly as outputs.

**Details**

This schedule runs indefinitely, returning each input value as its output
without modification. It effectively acts as a pass-through that simply
echoes its input values at each step.

To import and use `identity` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.identity
```

**Signature**

```ts
export declare const identity: <A>() => Schedule<A, A>
```
