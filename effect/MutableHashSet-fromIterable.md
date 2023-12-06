# fromIterable

Creates a new `MutableHashSet` from an iterable collection of values.

To import and use `fromIterable` from the "MutableHashSet" module:

```ts
import * as MutableHashSet from "effect/MutableHashSet"
// Can be accessed like this
MutableHashSet.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <K = never>(keys: Iterable<K>) => MutableHashSet<K>
```
