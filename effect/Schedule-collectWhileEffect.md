# collectWhileEffect

Collects all inputs into a `Chunk` while an effectful condition holds.

**Details**

This function creates a schedule that continuously collects inputs into a
`Chunk` while the given effectful predicate `f` returns `true`. The predicate
returns an effect, meaning it can depend on external state, such as database
queries, API responses, or real-time user conditions.

As soon as the effectful condition returns `false`, the schedule stops. This
is useful for dynamically controlled data collection, where stopping depends
on an external or asynchronous factor.

To import and use `collectWhileEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectWhileEffect
```

**Signature**

```ts
export declare const collectWhileEffect: <A, R>(
  f: (a: A) => Effect.Effect<boolean, never, R>
) => Schedule<Chunk.Chunk<A>, A, R>
```
