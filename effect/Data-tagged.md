# tagged

Provides a tagged constructor for the specified `Case`.

To import and use `tagged` from the "Data" module:

```ts
import * as Data from "effect/Data"
// Can be accessed like this
Data.tagged
```

**Example**

```ts
import * as Data from "effect/Data"

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
export declare const tagged: <A extends { readonly _tag: string }>(tag: A["_tag"]) => Case.Constructor<A, "_tag">
```
