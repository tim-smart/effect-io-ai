# separate

Partitions a `ReadonlyRecord` of `Either` values into two separate records,
one with the `Left` values and one with the `Right` values.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { separate } from '@effect/data/ReadonlyRecord'
import { left, right } from '@effect/data/Either'

assert.deepStrictEqual(separate({ a: left('e'), b: right(1) }), [{ a: 'e' }, { b: 1 }])
```

**Signature**

```ts
export declare const separate: <A, B>(self: ReadonlyRecord<Either<A, B>>) => [Record<string, A>, Record<string, B>]
```
