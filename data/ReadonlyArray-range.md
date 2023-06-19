# range

Return a `NonEmptyArray` containing a range of integers, including both endpoints.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Example**

```ts
import { range } from '@effect/data/ReadonlyArray'

assert.deepStrictEqual(range(1, 3), [1, 2, 3])
```

**Signature**

```ts
export declare const range: (start: number, end: number) => [number, ...number[]]
```
