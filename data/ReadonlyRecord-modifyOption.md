# modifyOption

Apply a function to the element at the specified key, creating a new record,
or return `None` if the key doesn't exist.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { modifyOption } from '@effect/data/ReadonlyRecord'
import { some, none } from '@effect/data/Option'

const f = (x: number) => x * 2

assert.deepStrictEqual(modifyOption({ a: 3 }, 'a', f), some({ a: 6 }))
assert.deepStrictEqual(modifyOption({ a: 3 }, 'b', f), none())
```

**Signature**

```ts
export declare const modifyOption: {
  <A, B>(key: string, f: (a: A) => B): (self: ReadonlyRecord<A>) => Option<Record<string, A | B>>
  <A, B>(self: ReadonlyRecord<A>, key: string, f: (a: A) => B): Option<Record<string, A | B>>
}
```
