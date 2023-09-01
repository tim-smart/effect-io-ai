# hashSet

Constructs a differ that knows how to diff a `HashSet` of values.

To import and use `hashSet` from the "Differ" module:

```ts
import * as Differ from '@effect/data/Differ'

// Can be accessed like this
Differ.hashSet
```

**Signature**

```ts
export declare const hashSet: <Value>() => Differ<HashSet<Value>, Differ.HashSet.Patch<Value>>
```
