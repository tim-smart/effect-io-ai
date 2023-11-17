# dropping

Creates a bounded `PubSub` with the dropping strategy. The `PubSub` will drop new
messages if the `PubSub` is at capacity.

For best performance use capacities that are powers of two.

To import and use `dropping` from the "PubSub" module:

```ts
import * as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.dropping
```

**Signature**

```ts
export declare const dropping: <A>(requestedCapacity: number) => Effect.Effect<never, never, PubSub<A>>
```
