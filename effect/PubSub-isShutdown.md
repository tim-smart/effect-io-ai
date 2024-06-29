# isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

To import and use `isShutdown` from the "PubSub" module:

```ts
import * as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.isShutdown
```

**Signature**

```ts
export declare const isShutdown: <A>(self: PubSub<A>) => Effect.Effect<boolean>
```
