# peekOption

Views the next element in the queue without removing it, returning `None`
if the queue is empty.

To import and use `peekOption` from the "TQueue" module:

```ts
import * as TQueue from 'effect/TQueue'

// Can be accessed like this
TQueue.peekOption
```

**Signature**

```ts
export declare const peekOption: <A>(self: TDequeue<A>) => STM.STM<never, never, Option.Option<A>>
```
