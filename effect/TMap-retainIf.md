# retainIf

Retains entries in a `TMap` that satisfy the specified predicate and returns the removed entries
(or `void` if `discard = true`).

To import and use `retainIf` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.retainIf
undefined

**Signature**

```ts
export declare const retainIf: {
  <K, V>(
    predicate: (key: K, value: V) => boolean,
    options: { readonly discard: true }
  ): (self: TMap<K, V>) => STM.STM<void>
  <K, V>(
    predicate: (key: K, value: V) => boolean,
    options?: { readonly discard: false }
  ): (self: TMap<K, V>) => STM.STM<Array<[K, V]>>
  <K, V>(self: TMap<K, V>, predicate: (key: K, value: V) => boolean, options: { readonly discard: true }): STM.STM<void>
  <K, V>(
    self: TMap<K, V>,
    predicate: (key: K, value: V) => boolean,
    options?: { readonly discard: false }
  ): STM.STM<Array<[K, V]>>
}
```
