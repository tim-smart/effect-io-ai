Package: `effect`<br />
Module: `Data`<br />

## Data.case

Provides a constructor for the specified `Case`.

**Example**

```ts
import * as assert from "node:assert"
import { Data, Equal } from "effect"

interface Person {
  readonly name: string
}

// Creating a constructor for the specified Case
const Person = Data.case<Person>()

// Creating instances of Person
const mike1 = Person({ name: "Mike" })
const mike2 = Person({ name: "Mike" })
const john = Person({ name: "John" })

// Checking equality
assert.deepStrictEqual(Equal.equals(mike1, mike2), true)
assert.deepStrictEqual(Equal.equals(mike1, john), false)

```

**Signature**

```ts
declare const case: <A>() => Case.Constructor<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Data.ts#L146)

Since v2.0.0