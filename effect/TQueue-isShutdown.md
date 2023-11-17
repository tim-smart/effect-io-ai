# isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

To import and use `isShutdown` from the "TQueue" module:

```ts
import * as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.isShutdown
```

**Signature**

```ts
export declare const isShutdown: <A>(self: TQueue<A>) => STM.STM<never, never, boolean>
```
