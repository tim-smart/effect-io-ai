# takeBetween

Takes a number of elements from the queue between the specified minimum and
maximum. If there are fewer than the minimum number of elements available,
retries until at least the minimum number of elements have been collected.

To import and use `takeBetween` from the "TQueue" module:

```ts
import * as TQueue from 'effect/TQueue'

// Can be accessed like this
TQueue.takeBetween
```

**Signature**

```ts
export declare const takeBetween: {
  (min: number, max: number): <A>(self: TDequeue<A>) => STM.STM<never, never, A[]>
  <A>(self: TDequeue<A>, min: number, max: number): STM.STM<never, never, A[]>
}
```
