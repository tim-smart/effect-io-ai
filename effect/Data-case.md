# case

Provides a constructor for the specified `Case`.

To import and use `case` from the "Data" module:

```ts
import * as Data from "effect/Data"
// Can be accessed like this
Data.case
```

**Example**

```ts
import * as Data from "effect/Data"
import * as Equal from "effect/Equal"

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
