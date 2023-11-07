# max

Returns the maximum between two `number`s.

To import and use `max` from the "Number" module:

```ts
import * as Number from 'effect/Number'

// Can be accessed like this
Number.max
```

**Example**

```ts
import { max } from 'effect/Number'

assert.deepStrictEqual(max(2, 3), 3)
```

**Signature**

```ts
export declare const max: { (that: number): (self: number) => number; (self: number, that: number): number }
```
