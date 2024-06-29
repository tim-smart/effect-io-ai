# transformValues

Atomically updates all values using a pure function.

To import and use `transformValues` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.transformValues
```

**Signature**

```ts
export declare const transformValues: {
  <V>(f: (value: V) => V): <K>(self: TMap<K, V>) => STM.STM<void>
  <K, V>(self: TMap<K, V>, f: (value: V) => V): STM.STM<void>
}
```
