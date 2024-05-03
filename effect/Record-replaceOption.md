# replaceOption

Replaces a value in the record with the new value passed as parameter.

To import and use `replaceOption` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.replaceOption
```

**Example**

```ts
import { Record, Option } from "effect"

assert.deepStrictEqual(Record.replaceOption({ a: 1, b: 2, c: 3 }, "a", 10), Option.some({ a: 10, b: 2, c: 3 }))
assert.deepStrictEqual(Record.replaceOption(Record.empty<string>(), "a", 10), Option.none())
```

**Signature**

```ts
export declare const replaceOption: {
  <K extends string | symbol, B>(
    key: NoInfer<K>,
    b: B
  ): <A>(self: ReadonlyRecord<K, A>) => Option.Option<Record<K, B | A>>
  <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, b: B): Option.Option<Record<K, A | B>>
}
```
