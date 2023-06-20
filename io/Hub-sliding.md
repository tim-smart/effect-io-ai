# sliding

Creates a bounded hub with the sliding strategy. The hub will add new
messages and drop old messages if the hub is at capacity.

For best performance use capacities that are powers of two.

To import and use `sliding` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.sliding
```

**Signature**

```ts
export declare const sliding: <A>(requestedCapacity: number) => Effect.Effect<never, never, Hub<A>>
```
