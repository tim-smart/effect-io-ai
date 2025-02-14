# collectUntil

Collects all inputs into a `Chunk` until a condition fails.

**Details**

This function creates a schedule that continuously collects inputs into a
`Chunk` until the given predicate function `f` evaluates to `false`. Once the
condition fails, the schedule stops.

To import and use `collectUntil` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectUntil
```

**Signature**

```ts
export declare const collectUntil: <A>(f: Predicate<A>) => Schedule<Chunk.Chunk<A>, A>
```
