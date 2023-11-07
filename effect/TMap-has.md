# has

Tests whether or not map contains a key.

To import and use `has` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.has
```

**Signature**

```ts
export declare const has: {
  <K>(key: K): <V>(self: TMap<K, V>) => STM.STM<never, never, boolean>
  <K, V>(self: TMap<K, V>, key: K): STM.STM<never, never, boolean>
}
```
