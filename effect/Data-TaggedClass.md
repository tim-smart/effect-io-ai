Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedClass

Provides a Tagged constructor for a Case Class.

**Example**

```ts
import * as assert from "node:assert"
import { Data, Equal } from "effect"

class Person extends Data.TaggedClass("Person")<{ readonly name: string }> {}

// Creating instances of Person
const mike1 = new Person({ name: "Mike" })
const mike2 = new Person({ name: "Mike" })
const john = new Person({ name: "John" })

// Checking equality
assert.deepStrictEqual(Equal.equals(mike1, mike2), true)
assert.deepStrictEqual(Equal.equals(mike1, john), false)

assert.deepStrictEqual(mike1._tag, "Person")
```

**Signature**

```ts
declare const TaggedClass: <Tag extends string>(tag: Tag) => new <A extends Record<string, any> = {}>(args: Types.Equals<A, {}> extends true ? void : { readonly [P in keyof A as P extends "_tag" ? never : P]: A[P]; }) => Readonly<A> & { readonly _tag: Tag; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Data.ts#L234)

Since v2.0.0