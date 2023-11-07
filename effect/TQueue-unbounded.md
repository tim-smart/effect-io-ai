# unbounded

Creates an unbounded queue.

To import and use `unbounded` from the "TQueue" module:

```ts
import * as TQueue from 'effect/TQueue'

// Can be accessed like this
TQueue.unbounded
```

**Signature**

```ts
export declare const unbounded: <A>() => STM.STM<never, never, TQueue<A>>
```
