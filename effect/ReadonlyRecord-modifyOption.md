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
assert.deepStrictEqual(modifyOption({ a: 3 } as Record<string, number>, "b", f), none())
```

**Signature**

```ts
export declare const modifyOption: {
  <K extends string | symbol, A, B>(
    key: NoInfer<K>,
    f: (a: A) => B
  ): (self: ReadonlyRecord<K, A>) => Option.Option<Record<K, A | B>>
  <K extends string | symbol, A, B>(
    self: ReadonlyRecord<K, A>,
    key: NoInfer<K>,
    f: (a: A) => B
  ): Option.Option<Record<K, A | B>>
}
```
