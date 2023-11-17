# isFull

Returns `true` if the `Queue` contains at least one element, `false`
otherwise.

To import and use `isFull` from the "PubSub" module:

```ts
import * as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.isFull
```

**Signature**

```ts
export declare const isFull: <A>(self: PubSub<A>) => Effect.Effect<never, never, boolean>
```
