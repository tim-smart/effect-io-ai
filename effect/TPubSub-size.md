# size

Retrieves the size of the `TPubSub`, which is equal to the number of elements
in the `TPubSub`. This may be negative if fibers are suspended waiting for
elements to be added to the `TPubSub`.

To import and use `size` from the "TPubSub" module:

```ts
import * as TPubSub from "effect/TPubSub"
// Can be accessed like this
TPubSub.size
```

**Signature**

```ts
export declare const size: <A>(self: TPubSub<A>) => STM.STM<number>
```
