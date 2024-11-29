# flatMapNullable

This is `flatMap` + `fromNullable`, useful when working with optional values.

To import and use `flatMapNullable` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.flatMapNullable
undefined

**Example**

```ts
import { pipe, Option } from "effect"

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
    Option.some(employee1),
    Option.flatMapNullable((employee) => employee.company?.address?.street?.name)
  ),
  Option.some("high street")
)

const employee2: Employee = { company: { address: { street: {} } } }

assert.deepStrictEqual(
  pipe(
    Option.some(employee2),
    Option.flatMapNullable((employee) => employee.company?.address?.street?.name)
  ),
  Option.none()
)
```

**Signature**

```ts
export declare const flatMapNullable: {
  <A, B>(f: (a: A) => B | null | undefined): (self: Option<A>) => Option<NonNullable<B>>
  <A, B>(self: Option<A>, f: (a: A) => B | null | undefined): Option<NonNullable<B>>
}
```
