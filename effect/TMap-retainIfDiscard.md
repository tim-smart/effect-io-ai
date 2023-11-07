# retainIfDiscard

Retains bindings matching predicate.

To import and use `retainIfDiscard` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.retainIfDiscard
```

**Signature**

```ts
export declare const retainIfDiscard: {
  <K, V>(predicate: (key: K, value: V) => boolean): (self: TMap<K, V>) => STM.STM<never, never, void>
  <K, V>(self: TMap<K, V>, predicate: (key: K, value: V) => boolean): STM.STM<never, never, void>
}
```
