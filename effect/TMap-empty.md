# empty

Makes an empty `TMap`.

To import and use `empty` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.empty
```

**Signature**

```ts
export declare const empty: <K, V>() => STM.STM<never, never, TMap<K, V>>
```
