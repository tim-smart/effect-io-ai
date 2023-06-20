# divide

Provides a division operation on `number`s.

To import and use `divide` from the "Number" module:

```ts
import * as Number from '@effect/data/Number'

// Can be accessed like this
Number.divide
```

**Example**

```ts
import { divide } from '@effect/data/Number'

assert.deepStrictEqual(divide(6, 3), 2)
```

**Signature**

```ts
export declare const divide: { (that: number): (self: number) => number; (self: number, that: number): number }
```
