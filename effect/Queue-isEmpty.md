# isEmpty

Returns `true` if the `Queue` contains zero elements, `false` otherwise.

To import and use `isEmpty` from the "Queue" module:

```ts
import * as Queue from "effect/Queue"
// Can be accessed like this
Queue.isEmpty
```

**Signature**

```ts
export declare const isEmpty: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<never, never, boolean>
```
