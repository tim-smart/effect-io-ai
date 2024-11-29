# get

Retrieve a value at a particular key from a record, returning it wrapped in an `Option`.

To import and use `get` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.get
undefined

**Example**

```ts
import { Record as R, Option } from "effect"

const person: Record<string, unknown> = { name: "John Doe", age: 35 }

assert.deepStrictEqual(R.get(person, "name"), Option.some("John Doe"))
assert.deepStrictEqual(R.get(person, "email"), Option.none())
```

**Signature**

```ts
export declare const get: {
  <K extends string | symbol>(key: NoInfer<K>): <A>(self: ReadonlyRecord<K, A>) => Option.Option<A>
  <K extends string | symbol, A>(self: ReadonlyRecord<K, A>, key: NoInfer<K>): Option.Option<A>
}
```
