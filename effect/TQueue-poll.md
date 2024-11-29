# poll

Takes a single element from the queue, returning `None` if the queue is
empty.

To import and use `poll` from the "TQueue" module:

ts
import \* as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.poll
undefined

**Signature**

```ts
export declare const poll: <A>(self: TDequeue<A>) => STM.STM<Option.Option<A>>
```
