# modifyOption

Apply a function to the element at the specified key, creating a new record,
or return `None` if the key doesn't exist.

To import and use `modifyOption` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.modifyOption
```

**Example**

```ts
import { modifyOption } from "effect/ReadonlyRecord"
import { some, none } from "effect/Option"

const f = (x: number) => x * 2

assert.deepStrictEqual(modifyOption({ a: 3 }, "a", f), some({ a: 6 }))
assert.deepStrictEqual(modifyOption({ a: 3 }, "b", f), none())
```

**Signature**

```ts
export declare const modifyOption: {
  <A, B>(key: string, f: (a: A) => B): (self: ReadonlyRecord<A>) => Option.Option<Record<string, A | B>>
  <A, B>(self: ReadonlyRecord<A>, key: string, f: (a: A) => B): Option.Option<Record<string, A | B>>
}
```
