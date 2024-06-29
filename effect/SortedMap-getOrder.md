# getOrder

Gets the `Order<K>` that the `SortedMap<K, V>` is using.

To import and use `getOrder` from the "SortedMap" module:

```ts
import * as SortedMap from "effect/SortedMap"
// Can be accessed like this
SortedMap.getOrder
```

**Signature**

```ts
export declare const getOrder: <K, V>(self: SortedMap<K, V>) => Order<K>
```
