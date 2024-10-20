# fromIterable

Creates a new `TMap` from an iterable collection of key/value pairs.

To import and use `fromIterable` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <K, V>(iterable: Iterable<readonly [K, V]>) => STM.STM<TMap<K, V>>
```
