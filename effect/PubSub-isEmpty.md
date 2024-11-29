# isEmpty

Returns `true` if the `Queue` contains zero elements, `false` otherwise.

To import and use `isEmpty` from the "PubSub" module:

ts
import \* as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.isEmpty
undefined

**Signature**

```ts
export declare const isEmpty: <A>(self: PubSub<A>) => Effect.Effect<boolean>
```
