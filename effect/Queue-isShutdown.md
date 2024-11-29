# isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

To import and use `isShutdown` from the "Queue" module:

ts
import \* as Queue from "effect/Queue"
// Can be accessed like this
Queue.isShutdown
undefined

**Signature**

```ts
export declare const isShutdown: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<boolean>
```
