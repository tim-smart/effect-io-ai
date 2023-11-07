# toReadonlyMap

Collects all bindings into a `ReadonlyMap`.

To import and use `toReadonlyMap` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.toReadonlyMap
```

**Signature**

```ts
export declare const toReadonlyMap: <K, V>(self: TMap<K, V>) => STM.STM<never, never, ReadonlyMap<K, V>>
```
