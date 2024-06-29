# recurUntil

A schedule that recurs for until the predicate evaluates to true.

To import and use `recurUntil` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.recurUntil
```

**Signature**

```ts
export declare const recurUntil: <A>(f: Predicate<A>) => Schedule<A, A, never>
```
