## map

Transforms each element of tuple using the given function, treating tuple homomorphically

**Example**

```ts
import * as assert from "node:assert"
import { pipe, Tuple } from "effect"

const result = pipe(
  ["a", 1, false] as const,
  Tuple.map((el) => el.toString().toUpperCase())
)
assert.deepStrictEqual(result, ['A', '1', 'FALSE'])
```

**Signature**

```ts
declare const map: { <T extends ReadonlyArray<any> | [], B>(fn: (element: T[number]) => B): (self: T) => TupleOf<T["length"], B>; <B, T extends ReadonlyArray<any> | []>(self: T, fn: (element: T[number]) => B): TupleOf<T["length"], B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L86)

Since v3.9.0