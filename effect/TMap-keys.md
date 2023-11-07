# keys

Collects all keys stored in map.

To import and use `keys` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.keys
```

**Signature**

```ts
export declare const keys: <K, V>(self: TMap<K, V>) => STM.STM<never, never, K[]>
```
