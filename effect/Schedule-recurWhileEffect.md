# recurWhileEffect

A schedule that recurs for as long as the effectful predicate evaluates to
true.

To import and use `recurWhileEffect` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.recurWhileEffect
```

**Signature**

```ts
export declare const recurWhileEffect: <Env, A>(f: (a: A) => Effect.Effect<Env, never, boolean>) => Schedule<Env, A, A>
```
