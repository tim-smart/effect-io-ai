Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.has

Checks if the specified value exists in the `MutableHashSet`.

Time complexity: `O(1)` average

**Syntax**

```ts
import { MutableHashSet, pipe } from "effect"
import assert from "node:assert/strict"

assert.equal(
  // with `data-last`, a.k.a. `pipeable` API
  pipe(MutableHashSet.make(0, 1, 2), MutableHashSet.has(3)),
  false
)

assert.equal(
  // or piped with the pipe function
  MutableHashSet.make(0, 1, 2).pipe(MutableHashSet.has(3)),
  false
)

assert.equal(
  // or with `data-first` API
  MutableHashSet.has(MutableHashSet.make(0, 1, 2), 3),
  false
)
```

**See**

- Other `MutableHashSet` elements are `module:MutableHashSet.add` `module:MutableHashSet.remove` `module:MutableHashSet.size` `module:MutableHashSet.clear`

**Signature**

```ts
declare const has: { <V>(key: V): (self: MutableHashSet<V>) => boolean; <V>(self: MutableHashSet<V>, key: V): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashSet.ts#L501)

Since v2.0.0