# recurWhileEffect

A schedule that recurs for as long as the effectful predicate evaluates to
true.

To import and use `recurWhileEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.recurWhileEffect
```

**Signature**

```ts
export declare const recurWhileEffect: <A, R>(f: (a: A) => Effect.Effect<boolean, never, R>) => Schedule<A, A, R>
```
