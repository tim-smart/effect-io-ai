# unfold

Creates a schedule that repeatedly applies a function to transform a state
value, producing a sequence of values.

**Details**

This function starts with an `initial` value and applies `f` recursively to
generate the next state at each step. The schedule continues indefinitely,
producing a stream of values by unfolding the state over time.

To import and use `unfold` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.unfold
```

**Signature**

```ts
export declare const unfold: <A>(initial: A, f: (a: A) => A) => Schedule<A>
```
