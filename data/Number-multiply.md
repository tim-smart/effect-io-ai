# multiply

Provides a multiplication operation on `number`s.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { multiply } from '@effect/data/Number'

assert.deepStrictEqual(multiply(2, 3), 6)
```

**Signature**

```ts
export declare const multiply: { (that: number): (self: number) => number; (self: number, that: number): number }
```
