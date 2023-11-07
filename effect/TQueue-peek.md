# peek

Views the next element in the queue without removing it, retrying if the
queue is empty.

To import and use `peek` from the "TQueue" module:

```ts
import * as TQueue from 'effect/TQueue'

// Can be accessed like this
TQueue.peek
```

**Signature**

```ts
export declare const peek: <A>(self: TDequeue<A>) => STM.STM<never, never, A>
```
