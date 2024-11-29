# make

Makes a new `TMap` that is initialized with specified values.

To import and use `make` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.make
undefined

**Signature**

```ts
export declare const make: <K, V>(...entries: Array<readonly [K, V]>) => STM.STM<TMap<K, V>>
```
