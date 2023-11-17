# flatMapNullable

This is `flatMap` + `fromNullable`, useful when working with optional values.

To import and use `flatMapNullable` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.flatMapNullable
```

**Example**

```ts
import { some, none, flatMapNullable } from "effect/Option"
import { pipe } from "effect/Function"

interface Employee {
  company?: {
    address?: {
      street?: {
        name?: string
      }
    }
  }
}

const employee1: Employee = { company: { address: { street: { name: "high street" } } } }

assert.deepStrictEqual(
  pipe(
    some(employee1),
    flatMapNullable((employee) => employee.company?.address?.street?.name)
  ),
  some("high street")
)

const employee2: Employee = { company: { address: { street: {} } } }

assert.deepStrictEqual(
  pipe(
    some(employee2),
    flatMapNullable((employee) => employee.company?.address?.street?.name)
  ),
  none()
)
```

**Signature**

```ts
export declare const flatMapNullable: {
  <A, B>(f: (a: A) => B | null | undefined): (self: Option<A>) => Option<NonNullable<B>>
  <A, B>(self: Option<A>, f: (a: A) => B | null | undefined): Option<NonNullable<B>>
}
```
