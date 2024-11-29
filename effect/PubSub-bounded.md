# bounded

Creates a bounded `PubSub` with the back pressure strategy. The `PubSub` will retain
messages until they have been taken by all subscribers, applying back
pressure to publishers if the `PubSub` is at capacity.

For best performance use capacities that are powers of two.

To import and use `bounded` from the "PubSub" module:

ts
import \* as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.bounded
undefined

**Signature**

```ts
export declare const bounded: <A>(
  capacity: number | { readonly capacity: number; readonly replay?: number | undefined }
) => Effect.Effect<PubSub<A>>
```
