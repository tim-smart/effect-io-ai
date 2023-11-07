# offer

Offers an element to the queue.

Returns whether the enqueue was successful or not.

To import and use `offer` from the "MutableQueue" module:

```ts
import * as MutableQueue from 'effect/MutableQueue'

// Can be accessed like this
MutableQueue.offer
```

**Signature**

```ts
export declare const offer: {
  <A>(self: MutableQueue<A>, value: A): boolean
  <A>(value: A): (self: MutableQueue<A>) => boolean
}
```
