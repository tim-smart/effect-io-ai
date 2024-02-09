# recurUntilEffect

A schedule that recurs for until the predicate evaluates to true.

To import and use `recurUntilEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.recurUntilEffect
```

**Signature**

```ts
export declare const recurUntilEffect: <Env, A>(f: (a: A) => Effect.Effect<boolean, never, Env>) => Schedule<Env, A, A>
```
