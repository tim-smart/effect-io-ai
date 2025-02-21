# recurUntil

A schedule that recurs until the given predicate evaluates to true.

**Details**

This schedule will continue executing as long as the provided predicate `f`
returns `false` for the input value. Once `f` evaluates to `true`, the
schedule stops recurring.

This is useful for defining schedules that should stop when a certain
condition is met, such as detecting a success state, reaching a threshold, or
avoiding unnecessary retries.

To import and use `recurUntil` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.recurUntil
```

**Signature**

```ts
export declare const recurUntil: <A>(f: Predicate<A>) => Schedule<A, A>
```
