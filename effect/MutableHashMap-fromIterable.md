# fromIterable

Creates a new `MutableHashMap` from an iterable collection of key/value pairs.

To import and use `fromIterable` from the "MutableHashMap" module:

ts
import \* as MutableHashMap from "effect/MutableHashMap"
// Can be accessed like this
MutableHashMap.fromIterable
undefined

**Signature**

```ts
export declare const fromIterable: <K, V>(entries: Iterable<readonly [K, V]>) => MutableHashMap<K, V>
```
