# multiplyAll

Takes an `Iterable` of `number`s and returns their multiplication as a single `number`.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { multiplyAll } from '@effect/data/Number'

assert.deepStrictEqual(multiplyAll([2, 3, 4]), 24)
```

**Signature**

```ts
export declare const multiplyAll: (collection: Iterable<number>) => number
```
