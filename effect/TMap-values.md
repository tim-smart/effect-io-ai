# values

Collects all values stored in map.

To import and use `values` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.values
```

**Signature**

```ts
export declare const values: <K, V>(self: TMap<K, V>) => STM.STM<Array<V>>
```
