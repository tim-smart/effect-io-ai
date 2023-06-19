# max

Returns the maximum between two `number`s.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { max } from '@effect/data/Number'

assert.deepStrictEqual(max(2, 3), 3)
```

**Signature**

```ts
export declare const max: { (that: number): (self: number) => number; (self: number, that: number): number }
```
