# unbounded

Creates an unbounded `PubSub`.

To import and use `unbounded` from the "PubSub" module:

ts
import \* as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.unbounded
undefined

**Signature**

```ts
export declare const unbounded: <A>(options?: { readonly replay?: number | undefined }) => Effect.Effect<PubSub<A>>
```
