# map

Transforms each element of tuple using the given function, treating tuple homomorphically

To import and use `map` from the "Tuple" module:

```ts
import * as Tuple from "effect/Tuple"
// Can be accessed like this
Tuple.map
```

**Example**

```ts
import { pipe, Tuple } from "effect"

const result = pipe(
  ["a", 1, false] as const,
  Tuple.map((el) => el.toString().toUpperCase())
)
assert.deepStrictEqual(result, ["A", "1", "FALSE"])
```

**Signature**

```ts
export declare const map: {
  <T extends ReadonlyArray<any> | [], B>(fn: (element: T[number]) => B): (self: T) => TupleOf<T["length"], B>
  <B, T extends ReadonlyArray<any> | []>(self: T, fn: (element: T[number]) => B): TupleOf<T["length"], B>
}
```
