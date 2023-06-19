# tupled

Creates a tupled version of this function: instead of `n` arguments, it accepts a single tuple argument.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { tupled } from '@effect/data/Function'

const sumTupled = tupled((x: number, y: number): number => x + y)

assert.deepStrictEqual(sumTupled([1, 2]), 3)
```

**Signature**

```ts
export declare const tupled: <A extends readonly unknown[], B>(f: (...a: A) => B) => (a: A) => B
```
