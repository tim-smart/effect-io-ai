# toMap

Collects all bindings into a `Map`.

To import and use `toMap` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.toMap
```

**Signature**

```ts
export declare const toMap: <K, V>(self: TMap<K, V>) => STM.STM<ReadonlyMap<K, V>>
```
