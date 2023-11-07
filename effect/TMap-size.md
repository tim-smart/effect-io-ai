# size

Returns the number of bindings.

To import and use `size` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.size
```

**Signature**

```ts
export declare const size: <K, V>(self: TMap<K, V>) => STM.STM<never, never, number>
```
