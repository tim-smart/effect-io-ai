# collectWhile

A schedule that recurs as long as the condition f holds, collecting all
inputs into a list.

To import and use `collectWhile` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.collectWhile
```

**Signature**

```ts
export declare const collectWhile: <A>(f: Predicate<A>) => Schedule<never, A, Chunk.Chunk<A>>
```
