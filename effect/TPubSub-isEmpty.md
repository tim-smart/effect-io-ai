# isEmpty

Returns `true` if the `TPubSub` contains zero elements, `false` otherwise.

To import and use `isEmpty` from the "TPubSub" module:

```ts
import * as TPubSub from "effect/TPubSub"
// Can be accessed like this
TPubSub.isEmpty
```

**Signature**

```ts
export declare const isEmpty: <A>(self: TPubSub<A>) => STM.STM<never, never, boolean>
```
