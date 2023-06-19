# sum

Provides an addition operation on `number`s.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { sum } from '@effect/data/Number'

assert.deepStrictEqual(sum(2, 3), 5)
```

**Signature**

```ts
export declare const sum: { (that: number): (self: number) => number; (self: number, that: number): number }
```
