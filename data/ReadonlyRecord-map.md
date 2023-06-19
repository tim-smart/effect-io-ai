# map

Maps a `ReadonlyRecord` into another `Record` by applying a transformation function to each of its values.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { map } from '@effect/data/ReadonlyRecord'

const f = (n: number) => `-${n}`

assert.deepStrictEqual(map({ a: 3, b: 5 }, f), { a: '-3', b: '-5' })

const g = (n: number, key: string) => `${key.toUpperCase()}-${n}`

assert.deepStrictEqual(map({ a: 3, b: 5 }, g), { a: 'A-3', b: 'B-5' })
```

**Signature**

```ts
export declare const map: {
  <K extends string, A, B>(f: (a: A, key: K) => B): (self: Record<K, A>) => Record<K, B>
  <K extends string, A, B>(self: Record<K, A>, f: (a: A, key: K) => B): Record<K, B>
}
```
