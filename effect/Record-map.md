# map

Maps a record into another record by applying a transformation function to each of its values.

To import and use `map` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.map
undefined

**Example**

```ts
import { map } from "effect/Record"

const f = (n: number) => `-${n}`

assert.deepStrictEqual(map({ a: 3, b: 5 }, f), { a: "-3", b: "-5" })

const g = (n: number, key: string) => `${key.toUpperCase()}-${n}`

assert.deepStrictEqual(map({ a: 3, b: 5 }, g), { a: "A-3", b: "B-5" })
```

**Signature**

```ts
export declare const map: {
  <K extends string, A, B>(f: (a: A, key: NoInfer<K>) => B): (self: ReadonlyRecord<K, A>) => Record<K, B>
  <K extends string, A, B>(self: ReadonlyRecord<K, A>, f: (a: A, key: NoInfer<K>) => B): Record<K, B>
}
```
