# hashMap

Constructs a differ that knows how to diff a `HashMap` of keys and values given
a differ that knows how to diff the values.

To import and use `hashMap` from the "Differ" module:

```ts
import * as Differ from 'effect/Differ'

// Can be accessed like this
Differ.hashMap
```

**Signature**

```ts
export declare const hashMap: <Key, Value, Patch>(
  differ: Differ<Value, Patch>
) => Differ<HashMap<Key, Value>, Differ.HashMap.Patch<Key, Value, Patch>>
```
