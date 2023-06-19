# min

Returns the minimum between two `number`s.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { min } from '@effect/data/Number'

assert.deepStrictEqual(min(2, 3), 2)
```

**Signature**

```ts
export declare const min: { (that: number): (self: number) => number; (self: number, that: number): number }
```
