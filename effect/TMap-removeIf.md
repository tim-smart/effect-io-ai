# removeIf

Removes bindings matching predicate and returns the removed entries.

To import and use `removeIf` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.removeIf
```

**Signature**

```ts
export declare const removeIf: {
  <K, V>(predicate: (key: K, value: V) => boolean): (self: TMap<K, V>) => STM.STM<never, never, (readonly [K, V])[]>
  <K, V>(self: TMap<K, V>, predicate: (key: K, value: V) => boolean): STM.STM<never, never, (readonly [K, V])[]>
}
```
