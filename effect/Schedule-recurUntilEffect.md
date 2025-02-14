# recurUntilEffect

A schedule that recurs until the given effectful predicate evaluates to true.

**Details**

This schedule continues executing as long as the provided effectful predicate
`f` returns `false`. Once `f` evaluates to `true`, the schedule stops
recurring. Unlike {@link recurUntil}, this function allows the stopping
condition to be computed asynchronously or based on external dependencies.

This is useful when the stopping condition depends on an effectful
computation, such as checking a database, making an API call, or retrieving
system state dynamically.

To import and use `recurUntilEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.recurUntilEffect
```

**Signature**

```ts
export declare const recurUntilEffect: <A, R>(f: (a: A) => Effect.Effect<boolean, never, R>) => Schedule<A, A, R>
```
