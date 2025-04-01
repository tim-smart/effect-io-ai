Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.toValues

Returns an `Array` of the values within the `HashSet`.

Time complexity: **`O(n)`** where n is the number of elements in the set

**Example**

```ts
import { HashSet, pipe } from "effect"
import { deepStrictEqual } from "node:assert/strict"

deepStrictEqual(
  pipe(
    HashSet.make(0, 1, 1, 2), // HashSet<number>
    HashSet.toValues // takes an HashSet<A> and returns an Array<A>
  ),
  Array.of(0, 1, 2)
)
```

**See**

- Other `HashSet` getters are `module:HashSet.values` `module:HashSet.size`

**Signature**

```ts
declare const toValues: <A>(self: HashSet<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L994)

Since v3.13.0