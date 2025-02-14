# recurWhile

A schedule that recurs as long as the given predicate evaluates to true.

\*_Details_

This schedule continues executing as long as the provided predicate `f`
returns `true` for the input value. Once `f` evaluates to `false`, the
schedule stops recurring.

To import and use `recurWhile` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.recurWhile
```

**Signature**

```ts
export declare const recurWhile: <A>(f: Predicate<A>) => Schedule<A, A>
```
