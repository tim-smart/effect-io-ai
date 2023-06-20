# bounded

Creates a bounded hub with the back pressure strategy. The hub will retain
messages until they have been taken by all subscribers, applying back
pressure to publishers if the hub is at capacity.

For best performance use capacities that are powers of two.

To import and use `bounded` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.bounded
```

**Signature**

```ts
export declare const bounded: <A>(requestedCapacity: number) => Effect.Effect<never, never, Hub<A>>
```
