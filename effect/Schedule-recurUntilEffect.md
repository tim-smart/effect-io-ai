# recurUntilEffect

A schedule that recurs for until the predicate evaluates to true.

To import and use `recurUntilEffect` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.recurUntilEffect
undefined

**Signature**

```ts
export declare const recurUntilEffect: <A, R>(f: (a: A) => Effect.Effect<boolean, never, R>) => Schedule<A, A, R>
```
