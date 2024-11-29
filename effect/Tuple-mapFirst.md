# mapFirst

Transforms the first component of a tuple using a given function.

To import and use `mapFirst` from the "Tuple" module:

ts
import \* as Tuple from "effect/Tuple"
// Can be accessed like this
Tuple.mapFirst
undefined

**Example**

```ts
import { mapFirst } from "effect/Tuple"

assert.deepStrictEqual(
  mapFirst(["hello", 42], (s) => s.toUpperCase()),
  ["HELLO", 42]
)
```

**Signature**

```ts
export declare const mapFirst: {
  <L1, L2>(f: (left: L1) => L2): <R>(self: readonly [L1, R]) => [L2, R]
  <L1, R, L2>(self: readonly [L1, R], f: (left: L1) => L2): [L2, R]
}
```
