# mapBoth

Transforms both elements of a tuple using the given functions.

To import and use `mapBoth` from the "Tuple" module:

```ts
import * as Tuple from '@effect/data/Tuple'

// Can be accessed like this
Tuple.mapBoth
```

**Example**

```ts
import { mapBoth } from '@effect/data/Tuple'

assert.deepStrictEqual(mapBoth(['hello', 42], { onFirst: (s) => s.toUpperCase(), onSecond: (n) => n.toString() }), [
  'HELLO',
  '42',
])
```

**Signature**

```ts
export declare const mapBoth: {
  <L1, L2, R1, R2>(options: { readonly onFirst: (e: L1) => L2; readonly onSecond: (a: R1) => R2 }): (
    self: readonly [L1, R1]
  ) => [L2, R2]
  <L1, R1, L2, R2>(
    self: readonly [L1, R1],
    options: { readonly onFirst: (e: L1) => L2; readonly onSecond: (a: R1) => R2 }
  ): [L2, R2]
}
```
