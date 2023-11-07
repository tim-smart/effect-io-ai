# transform

Atomically updates all bindings using a pure function.

To import and use `transform` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.transform
```

**Signature**

```ts
export declare const transform: {
  <K, V>(f: (key: K, value: V) => readonly [K, V]): (self: TMap<K, V>) => STM.STM<never, never, void>
  <K, V>(self: TMap<K, V>, f: (key: K, value: V) => readonly [K, V]): STM.STM<never, never, void>
}
```
