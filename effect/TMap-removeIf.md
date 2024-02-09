# removeIf

Removes entries from a `TMap` that satisfy the specified predicate and returns the removed entries
(or `void` if `discard = true`).

To import and use `removeIf` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.removeIf
```

**Signature**

```ts
export declare const removeIf: {
  <K, V>(
    predicate: (key: K, value: V) => boolean,
    options: { readonly discard: true }
  ): (self: TMap<K, V>) => STM.STM<void>
  <K, V>(
    predicate: (key: K, value: V) => boolean,
    options?: { readonly discard: false }
  ): (self: TMap<K, V>) => STM.STM<[K, V][], never, never>
  <K, V>(self: TMap<K, V>, predicate: (key: K, value: V) => boolean, options: { readonly discard: true }): STM.STM<void>
  <K, V>(
    self: TMap<K, V>,
    predicate: (key: K, value: V) => boolean,
    options?: { readonly discard: false }
  ): STM.STM<[K, V][], never, never>
}
```
