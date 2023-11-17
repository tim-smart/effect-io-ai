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
import { replaceOption } from "effect/ReadonlyRecord"
import { some, none } from "effect/Option"

assert.deepStrictEqual(replaceOption({ a: 1, b: 2, c: 3 }, "a", 10), some({ a: 10, b: 2, c: 3 }))
assert.deepStrictEqual(replaceOption({}, "a", 10), none())
```

**Signature**

```ts
export declare const replaceOption: {
  <B>(key: string, b: B): <A>(self: ReadonlyRecord<A>) => Option.Option<Record<string, B | A>>
  <A, B>(self: ReadonlyRecord<A>, key: string, b: B): Option.Option<Record<string, A | B>>
}
```
