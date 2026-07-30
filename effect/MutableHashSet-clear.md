Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.clear

Removes all values from the `MutableHashSet`.

This function operates by delegating the clearing action to the underlying
key map associated with the given `MutableHashSet`. It ensures that the hash
set becomes empty while maintaining its existence and structure.

**Example**

```ts
import { MutableHashSet, pipe } from "effect"
import assert from "node:assert/strict"

assert.deepStrictEqual(
  pipe(
    MutableHashSet.make(1, 2, 3, 4),
    MutableHashSet.clear,
    MutableHashSet.size
  ),
  0
)
```

**See**

- Other `MutableHashSet` elements are `module:MutableHashSet.add` `module:MutableHashSet.has` `module:MutableHashSet.remove` `module:MutableHashSet.size`

**Signature**

```ts
declare const clear: <V>(self: MutableHashSet<V>) => MutableHashSet<V>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashSet.ts#L704)

Since v2.0.0