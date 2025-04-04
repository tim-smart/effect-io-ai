Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.remove

Removes a value from the `MutableHashSet`.

Time complexity: **`O(1)`** average

**Syntax**

```ts
import { MutableHashSet, pipe } from "effect"
import assert from "node:assert/strict"

assert.equal(
  // with `data-last`, a.k.a. `pipeable` API
  pipe(
    MutableHashSet.make(0, 1, 2),
    MutableHashSet.remove(0),
    MutableHashSet.has(0)
  ),
  false
)

assert.equal(
  // or piped with the pipe function
  MutableHashSet.make(0, 1, 2).pipe(
    MutableHashSet.remove(0),
    MutableHashSet.has(0)
  ),
  false
)

assert.equal(
  // or with `data-first` API
  MutableHashSet.remove(MutableHashSet.make(0, 1, 2), 0).pipe(
    MutableHashSet.has(0)
  ),
  false
)
```

**See**

- Other `MutableHashSet` elements are `module:MutableHashSet.add` `module:MutableHashSet.has` `module:MutableHashSet.size` `module:MutableHashSet.clear`

**Signature**

```ts
declare const remove: { <V>(key: V): (self: MutableHashSet<V>) => MutableHashSet<V>; <V>(self: MutableHashSet<V>, key: V): MutableHashSet<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashSet.ts#L584)

Since v2.0.0