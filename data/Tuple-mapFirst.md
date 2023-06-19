# mapFirst

Transforms the first component of a tuple using a given function.

Part of the `Tuple` module, imported from `@effect/data/Tuple`.

**Example**

```ts
import { mapFirst } from '@effect/data/Tuple'

assert.deepStrictEqual(
  mapFirst(['hello', 42], (s) => s.toUpperCase()),
  ['HELLO', 42]
)
```

**Signature**

```ts
export declare const mapFirst: {
  <L1, L2>(f: (left: L1) => L2): <R>(self: readonly [L1, R]) => [L2, R]
  <L1, R, L2>(self: readonly [L1, R], f: (left: L1) => L2): [L2, R]
}
```
