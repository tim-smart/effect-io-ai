# offer

Places one value in the queue.

To import and use `offer` from the "TQueue" module:

```ts
import * as TQueue from 'effect/TQueue'

// Can be accessed like this
TQueue.offer
```

**Signature**

```ts
export declare const offer: {
  <A>(value: A): (self: TEnqueue<A>) => STM.STM<never, never, void>
  <A>(self: TEnqueue<A>, value: A): STM.STM<never, never, void>
}
```
