# poll

Dequeues an element from the queue.

Returns either an element from the queue, or the `def` param.

**Note**: if there is no meaningful default for your type, you can always
use `poll(MutableQueue.EmptyMutableQueue)`.

To import and use `poll` from the "MutableQueue" module:

```ts
import * as MutableQueue from "effect/MutableQueue"
// Can be accessed like this
MutableQueue.poll
```

**Signature**

```ts
export declare const poll: {
  <D>(def: D): <A>(self: MutableQueue<A>) => D | A
  <A, D>(self: MutableQueue<A>, def: D): A | D
}
```
