# recurWhileEffect

A schedule that recurs as long as the given effectful predicate evaluates to
true.

**Details**

This schedule continues executing as long as the provided effectful predicate
`f` returns `true`. Once `f` evaluates to `false`, the schedule stops
recurring. Unlike {@link recurWhile}, this function allows the condition to
be computed dynamically using an effectful computation.

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
