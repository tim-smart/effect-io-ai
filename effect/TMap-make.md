# make

Makes a new `TMap` that is initialized with specified values.

To import and use `make` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.make
```

**Signature**

```ts
export declare const make: <K, V>(...entries: (readonly [K, V])[]) => STM.STM<never, never, TMap<K, V>>
```
