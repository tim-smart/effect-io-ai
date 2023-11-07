# toReadonlyArray

Collects all bindings into a `ReadonlyArray`.

To import and use `toReadonlyArray` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.toReadonlyArray
```

**Signature**

```ts
export declare const toReadonlyArray: <K, V>(self: TMap<K, V>) => STM.STM<never, never, readonly (readonly [K, V])[]>
```
