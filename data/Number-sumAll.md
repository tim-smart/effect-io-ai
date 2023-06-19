# sumAll

Takes an `Iterable` of `number`s and returns their sum as a single `number`.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { sumAll } from '@effect/data/Number'

assert.deepStrictEqual(sumAll([2, 3, 4]), 9)
```

**Signature**

```ts
export declare const sumAll: (collection: Iterable<number>) => number
```
