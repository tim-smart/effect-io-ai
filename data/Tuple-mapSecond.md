# mapSecond

Transforms the second component of a tuple using a given function.

To import and use `mapSecond` from the "Tuple" module:

```ts
import * as Tuple from '@effect/data/Tuple'

// Can be accessed like this
Tuple.mapSecond
```

**Example**

```ts
import { mapSecond } from '@effect/data/Tuple'

assert.deepStrictEqual(
  mapSecond(['hello', 42], (n) => n.toString()),
  ['hello', '42']
)
```

**Signature**

```ts
export declare const mapSecond: {
  <R1, R2>(f: (right: R1) => R2): <L>(self: readonly [L, R1]) => [L, R2]
  <L, R1, R2>(self: readonly [L, R1], f: (right: R1) => R2): [L, R2]
}
```
