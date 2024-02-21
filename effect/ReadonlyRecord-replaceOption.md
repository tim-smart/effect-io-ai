# replaceOption

Replaces a value in the record with the new value passed as parameter.

To import and use `replaceOption` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.replaceOption
```

**Example**

```ts
import { empty, replaceOption } from "effect/ReadonlyRecord"
import { some, none } from "effect/Option"

assert.deepStrictEqual(replaceOption({ a: 1, b: 2, c: 3 }, "a", 10), some({ a: 10, b: 2, c: 3 }))
assert.deepStrictEqual(replaceOption(empty<string>(), "a", 10), none())
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
