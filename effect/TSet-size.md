# size

Returns the set's cardinality.

To import and use `size` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.size
```

**Signature**

```ts
export declare const size: <A>(self: TSet<A>) => STM.STM<never, never, number>
```
