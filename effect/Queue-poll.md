# poll

Returns the first value in the `Queue` as a `Some<A>`, or `None` if the queue
is empty.

To import and use `poll` from the "Queue" module:

ts
import \* as Queue from "effect/Queue"
// Can be accessed like this
Queue.poll
undefined

**Signature**

```ts
export declare const poll: <A>(self: Dequeue<A>) => Effect.Effect<Option.Option<A>>
```
