# toArray

Collects all bindings into an `Array`.

To import and use `toArray` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.toArray
```

**Signature**

```ts
export declare const toArray: <K, V>(self: TMap<K, V>) => STM.STM<never, never, [K, V][]>
```
