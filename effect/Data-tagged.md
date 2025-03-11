## tagged

Provides a tagged constructor for the specified `Case`.

**Example**

```ts
import * as assert from "node:assert"
import { Data } from "effect"

interface Person {
  readonly _tag: "Person" // the tag
  readonly name: string
}

const Person = Data.tagged<Person>("Person")

const mike = Person({ name: "Mike" })

assert.deepEqual(mike, { _tag: "Person", name: "Mike" })
```

**Signature**

```ts
declare const tagged: <A extends { readonly _tag: string; }>(tag: A["_tag"]) => Case.Constructor<A, "_tag">
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Data.ts#L172)

Since v2.0.0