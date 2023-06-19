# filterMap

Transforms a `ReadonlyRecord` into a `Record` by applying the function `f` to each key and value in the original `ReadonlyRecord`.
If the function returns `Some`, the key-value pair is included in the output `Record`.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { filterMap } from '@effect/data/ReadonlyRecord'
import { some, none } from '@effect/data/Option'

const x = { a: 1, b: 2, c: 3 }
const f = (a: number, key: string) => (a > 2 ? some(a * 2) : none())
assert.deepStrictEqual(filterMap(x, f), { c: 6 })
```

**Signature**

```ts
export declare const filterMap: {
  <A, B>(f: (a: A, key: string) => Option<B>): (self: ReadonlyRecord<A>) => Record<string, B>
  <A, B>(self: ReadonlyRecord<A>, f: (a: A, key: string) => Option<B>): Record<string, B>
}
```
