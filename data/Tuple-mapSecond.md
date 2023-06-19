# mapSecond

Transforms the second component of a tuple using a given function.

Part of the `Tuple` module, imported from `@effect/data/Tuple`.

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
