# unsafeOffer

Places one value in the queue.

To import and use `unsafeOffer` from the "Queue" module:

ts
import \* as Queue from "effect/Queue"
// Can be accessed like this
Queue.unsafeOffer
undefined

**Signature**

```ts
export declare const unsafeOffer: {
  <A>(value: A): (self: Enqueue<A>) => boolean
  <A>(self: Enqueue<A>, value: A): boolean
}
```
