# multiply

Provides a multiplication operation on `number`s.

To import and use `multiply` from the "Number" module:

```ts
import * as Number from 'effect/Number'

// Can be accessed like this
Number.multiply
```

**Example**

```ts
import { multiply } from 'effect/Number'

assert.deepStrictEqual(multiply(2, 3), 6)
```

**Signature**

```ts
export declare const multiply: { (that: number): (self: number) => number; (self: number, that: number): number }
```
