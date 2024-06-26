# mapKeys

Maps the keys of a `ReadonlyRecord` while preserving the corresponding values.

To import and use `mapKeys` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.mapKeys
```

**Example**

```ts
import { mapKeys } from "effect/Record"

assert.deepStrictEqual(
  mapKeys({ a: 3, b: 5 }, (key) => key.toUpperCase()),
  { A: 3, B: 5 }
)
```

**Signature**

```ts
export declare const mapKeys: {
  <K extends string, A, K2 extends string>(f: (key: K, a: A) => K2): (self: ReadonlyRecord<K, A>) => Record<K2, A>
  <K extends string, A, K2 extends string>(self: ReadonlyRecord<K, A>, f: (key: K, a: A) => K2): Record<K2, A>
}
```
