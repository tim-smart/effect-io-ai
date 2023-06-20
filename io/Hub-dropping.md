# dropping

Creates a bounded hub with the dropping strategy. The hub will drop new
messages if the hub is at capacity.

For best performance use capacities that are powers of two.

To import and use `dropping` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.dropping
```

**Signature**

```ts
export declare const dropping: <A>(requestedCapacity: number) => Effect.Effect<never, never, Hub<A>>
```
