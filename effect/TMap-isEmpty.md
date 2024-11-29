# isEmpty

Tests if the map is empty or not.

To import and use `isEmpty` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.isEmpty
undefined

**Signature**

```ts
export declare const isEmpty: <K, V>(self: TMap<K, V>) => STM.STM<boolean>
```
