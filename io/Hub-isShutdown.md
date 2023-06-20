# isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

To import and use `isShutdown` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.isShutdown
```

**Signature**

```ts
export declare const isShutdown: <A>(self: Hub<A>) => Effect.Effect<never, never, boolean>
```
