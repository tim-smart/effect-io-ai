# divide

Provides a division operation on `number`s.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { divide } from '@effect/data/Number'

assert.deepStrictEqual(divide(6, 3), 2)
```

**Signature**

```ts
export declare const divide: { (that: number): (self: number) => number; (self: number, that: number): number }
```
