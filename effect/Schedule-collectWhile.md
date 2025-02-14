# collectWhile

Collects all inputs into a `Chunk` while a condition holds.

**Details**

This function creates a schedule that continuously collects inputs into a
`Chunk` while the given predicate function `f` evaluates to `true`. As soon
as the condition fails, the schedule stops.

To import and use `collectWhile` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectWhile
```

**Signature**

```ts
export declare const collectWhile: <A>(f: Predicate<A>) => Schedule<Chunk.Chunk<A>, A>
```
