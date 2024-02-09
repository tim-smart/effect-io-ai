# sliding

Creates a bounded `PubSub` with the sliding strategy. The `PubSub` will add new
messages and drop old messages if the `PubSub` is at capacity.

For best performance use capacities that are powers of two.

To import and use `sliding` from the "PubSub" module:

```ts
import * as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.sliding
```

**Signature**

```ts
export declare const sliding: <A>(requestedCapacity: number) => Effect.Effect<PubSub<A>, never, never>
```
