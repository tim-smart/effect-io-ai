# Class

Provides a constructor for a Case Class.

To import and use `Class` from the "Data" module:

```ts
import * as Data from "effect/Data"
// Can be accessed like this
Data.Class
```

**Example**

```ts
import * as Data from "effect/Data"
import * as Equal from "effect/Equal"

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
export declare const Class: new <A extends Record<string, any> = {}>(
  args: Types.Equals<Omit<A, keyof Equal.Equal>, {}> extends true
    ? void
    : { readonly [P in keyof A as P extends keyof Equal.Equal ? never : P]: A[P] }
) => Data<Readonly<A>>
```
