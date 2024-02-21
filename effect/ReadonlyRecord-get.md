# get

Retrieve a value at a particular key from a record, returning it wrapped in an `Option`.

To import and use `get` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.get
```

**Example**

```ts
import { get } from "effect/ReadonlyRecord"
import { some, none } from "effect/Option"

const person: Record<string, unknown> = { name: "John Doe", age: 35 }

assert.deepStrictEqual(get(person, "name"), some("John Doe"))
assert.deepStrictEqual(get(person, "email"), none())
```

**Signature**

```ts
export declare const get: {
  <K extends string | symbol>(key: NoInfer<K>): <A>(self: ReadonlyRecord<K, A>) => Option.Option<A>
  <K extends string | symbol, A>(self: ReadonlyRecord<K, A>, key: NoInfer<K>): Option.Option<A>
}
```
