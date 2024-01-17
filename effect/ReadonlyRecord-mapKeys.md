# mapKeys

Maps the keys of a `ReadonlyRecord` while preserving the corresponding values.

To import and use `mapKeys` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.mapKeys
```

**Example**

```ts
import { mapKeys } from "effect/ReadonlyRecord"

assert.deepStrictEqual(
  mapKeys({ a: 3, b: 5 }, (key) => key.toUpperCase()),
  { A: 3, B: 5 }
)
```

**Signature**

```ts
export declare const mapKeys: {
  <A>(f: (key: string, a: A) => string): (self: ReadonlyRecord<A>) => Record<string, A>
  <A>(self: ReadonlyRecord<A>, f: (key: string, a: A) => string): Record<string, A>
}
```
