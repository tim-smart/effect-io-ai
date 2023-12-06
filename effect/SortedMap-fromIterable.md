# fromIterable

Creates a new `SortedMap` from an iterable collection of key/value pairs.

To import and use `fromIterable` from the "SortedMap" module:

```ts
import * as SortedMap from "effect/SortedMap"
// Can be accessed like this
SortedMap.fromIterable
```

**Signature**

```ts
export declare const fromIterable: {
  <B>(ord: Order<B>): <K extends B, V>(iterable: Iterable<readonly [K, V]>) => SortedMap<K, V>
  <K extends B, V, B>(iterable: Iterable<readonly [K, V]>, ord: Order<B>): SortedMap<K, V>
}
```
