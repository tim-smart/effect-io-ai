# mapEntries

Maps entries of a `ReadonlyRecord` using the provided function, allowing modification of both keys and corresponding values.

To import and use `mapEntries` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.mapEntries
```

**Example**

```ts
import { mapEntries } from "effect/ReadonlyRecord"

assert.deepStrictEqual(
  mapEntries({ a: 3, b: 5 }, (a, key) => [key.toUpperCase(), a + 1]),
  { A: 4, B: 6 }
)
```

**Signature**

```ts
export declare const mapEntries: {
  <A>(f: (a: A, key: string) => [string, A]): (self: ReadonlyRecord<A>) => Record<string, A>
  <A>(self: ReadonlyRecord<A>, f: (a: A, key: string) => [string, A]): Record<string, A>
}
```
