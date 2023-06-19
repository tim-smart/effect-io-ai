# poll

Dequeues an element from the queue.

Returns either an element from the queue, or the `def` param.

**Note**: if there is no meaningful default for your type, you can always
use `poll(MutableQueue.EmptyMutableQueue)`.

Part of the `MutableQueue` module, imported from `@effect/data/MutableQueue`.

**Signature**

```ts
export declare const poll: {
  <D>(def: D): <A>(self: MutableQueue<A>) => D | A
  <A, D>(self: MutableQueue<A>, def: D): A | D
}
```
