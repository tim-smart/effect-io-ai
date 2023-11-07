# min

Returns the minimum between two `number`s.

To import and use `min` from the "Number" module:

```ts
import * as Number from 'effect/Number'

// Can be accessed like this
Number.min
```

**Example**

```ts
import { min } from 'effect/Number'

assert.deepStrictEqual(min(2, 3), 2)
```

**Signature**

```ts
export declare const min: { (that: number): (self: number) => number; (self: number, that: number): number }
```
