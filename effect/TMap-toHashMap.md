# toHashMap

Collects all bindings into a `HashMap`.

To import and use `toHashMap` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.toHashMap
```

**Signature**

```ts
export declare const toHashMap: <K, V>(self: TMap<K, V>) => STM.STM<HashMap.HashMap<K, V>, never, never>
```
