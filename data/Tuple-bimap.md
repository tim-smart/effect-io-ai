# bimap

Transforms both elements of a tuple using the given functions.

Part of the `Tuple` module, imported from `@effect/data/Tuple`.

**Example**

```ts
import { bimap } from '@effect/data/Tuple'

assert.deepStrictEqual(
  bimap(
    ['hello', 42],
    (s) => s.toUpperCase(),
    (n) => n.toString()
  ),
  ['HELLO', '42']
)
```

**Signature**

```ts
export declare const bimap: {
  <L1, L2, R1, R2>(f: (e: L1) => L2, g: (a: R1) => R2): (self: readonly [L1, R1]) => [L2, R2]
  <L1, R1, L2, R2>(self: readonly [L1, R1], f: (e: L1) => L2, g: (a: R1) => R2): [L2, R2]
}
```
