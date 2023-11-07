# retainIf

Retains bindings matching predicate and returns removed bindings.

To import and use `retainIf` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.retainIf
```

**Signature**

```ts
export declare const retainIf: {
  <K, V>(predicate: (key: K, value: V) => boolean): (self: TMap<K, V>) => STM.STM<never, never, (readonly [K, V])[]>
  <K, V>(self: TMap<K, V>, predicate: (key: K, value: V) => boolean): STM.STM<never, never, (readonly [K, V])[]>
}
```
