## Class

Provides a constructor for a Case Class.

**Example**

```ts
import * as assert from "node:assert"
import { Data, Equal } from "effect"

class Person extends Data.Class<{ readonly name: string }> {}

// Creating instances of Person
const mike1 = new Person({ name: "Mike" })
const mike2 = new Person({ name: "Mike" })
const john = new Person({ name: "John" })

// Checking equality
assert.deepStrictEqual(Equal.equals(mike1, mike2), true)
assert.deepStrictEqual(Equal.equals(mike1, john), false)
```

**Signature**

```ts
declare const Class: new <A extends Record<string, any> = {}>(args: Types.Equals<A, {}> extends true ? void : { readonly [P in keyof A]: A[P]; }) => Readonly<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Data.ts#L204)

Since v2.0.0