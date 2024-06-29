# seek

Drops elements from the queue while they do not satisfy the predicate,
taking and returning the first element that does satisfy the predicate.
Retries if no elements satisfy the predicate.

To import and use `seek` from the "TQueue" module:

```ts
import * as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.seek
```

**Signature**

```ts
export declare const seek: {
  <A>(predicate: Predicate<A>): (self: TDequeue<A>) => STM.STM<A, never, never>
  <A>(self: TDequeue<A>, predicate: Predicate<A>): STM.STM<A, never, never>
}
```
