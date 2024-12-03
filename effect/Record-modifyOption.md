# modifyOption

Apply a function to the element at the specified key, creating a new record,
or return `None` if the key doesn't exist.

To import and use `modifyOption` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.modifyOption
```

**Example**

```ts
import { Record as R, Option } from "effect"

const f = (x: number) => x * 2

assert.deepStrictEqual(R.modifyOption({ a: 3 }, "a", f), Option.some({ a: 6 }))
assert.deepStrictEqual(R.modifyOption({ a: 3 } as Record<string, number>, "b", f), Option.none())
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
