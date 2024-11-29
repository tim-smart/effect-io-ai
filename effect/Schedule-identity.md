# identity

A schedule that always recurs, which returns inputs as outputs.

To import and use `identity` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.identity
undefined

**Signature**

```ts
export declare const identity: <A>() => Schedule<A, A>
```
