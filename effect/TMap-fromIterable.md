# fromIterable

Makes a new `TMap` initialized with provided iterable.

To import and use `fromIterable` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <K, V>(iterable: Iterable<readonly [K, V]>) => STM.STM<never, never, TMap<K, V>>
```
