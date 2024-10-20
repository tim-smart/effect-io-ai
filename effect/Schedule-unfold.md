# unfold

Unfolds a schedule that repeats one time from the specified state and
iterator.

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
