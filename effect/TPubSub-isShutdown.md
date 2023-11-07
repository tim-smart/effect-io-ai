# isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

To import and use `isShutdown` from the "TPubSub" module:

```ts
import * as TPubSub from 'effect/TPubSub'

// Can be accessed like this
TPubSub.isShutdown
```

**Signature**

```ts
export declare const isShutdown: <A>(self: TPubSub<A>) => STM.STM<never, never, boolean>
```
