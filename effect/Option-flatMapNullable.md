# flatMapNullable

Combines `flatMap` and `fromNullable`, transforming the value inside a `Some`
using a function that may return `null` or `undefined`.

**Details**

This function applies a transformation function `f` to the value inside a
`Some`. The function `f` may return a value, `null`, or `undefined`. If `f`
returns a value, it is wrapped in a `Some`. If `f` returns `null` or
`undefined`, the result is `None`. If the input `Option` is `None`, the
function is not applied, and `None` is returned.

This utility is particularly useful when working with deeply nested optional
values or chaining computations that may result in `null` or `undefined` at
some point.

To import and use `flatMapNullable` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.flatMapNullable
```

**Example**

```ts
import { Option } from "effect"

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

// Extracting a deeply nested property
console.log(Option.some(employee1).pipe(Option.flatMapNullable((employee) => employee.company?.address?.street?.name)))
// Output: { _id: 'Option', _tag: 'Some', value: 'high street' }

const employee2: Employee = { company: { address: { street: {} } } }

// Property does not exist
console.log(Option.some(employee2).pipe(Option.flatMapNullable((employee) => employee.company?.address?.street?.name)))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
export declare const flatMapNullable: {
  <A, B>(f: (a: A) => B | null | undefined): (self: Option<A>) => Option<NonNullable<B>>
  <A, B>(self: Option<A>, f: (a: A) => B | null | undefined): Option<NonNullable<B>>
}
```
