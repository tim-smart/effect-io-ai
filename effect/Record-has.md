# has

Check if a given `key` exists in a record.

To import and use `has` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.has
```

**Example**

```ts
import { empty, has } from "effect/Record"

assert.deepStrictEqual(has({ a: 1, b: 2 }, "a"), true)
assert.deepStrictEqual(has(empty<string>(), "c"), false)
```

**Signature**

```ts
export declare const has: {
  <K extends string | symbol>(key: NoInfer<K>): <A>(self: ReadonlyRecord<K, A>) => boolean
  <K extends string | symbol, A>(self: ReadonlyRecord<K, A>, key: NoInfer<K>): boolean
}
```
