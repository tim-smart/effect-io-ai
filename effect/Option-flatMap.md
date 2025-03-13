Package: `effect`<br />
Module: `Option`<br />

## Option.flatMap

Applies a function to the value of a `Some` and flattens the resulting
`Option`. If the input is `None`, it remains `None`.

**Details**

This function allows you to chain computations that return `Option` values.
If the input `Option` is `Some`, the provided function `f` is applied to the
contained value, and the resulting `Option` is returned. If the input is
`None`, the function is not applied, and the result remains `None`.

This utility is particularly useful for sequencing operations that may fail
or produce optional results, enabling clean and concise workflows for
handling such cases.

**Example**

```ts
import { Option } from "effect"

interface Address {
  readonly city: string
  readonly street: Option.Option<string>
}

interface User {
  readonly id: number
  readonly username: string
  readonly email: Option.Option<string>
  readonly address: Option.Option<Address>
}

const user: User = {
  id: 1,
  username: "john_doe",
  email: Option.some("john.doe@example.com"),
  address: Option.some({
    city: "New York",
    street: Option.some("123 Main St")
  })
}

// Use flatMap to extract the street value
const street = user.address.pipe(
  Option.flatMap((address) => address.street)
)

console.log(street)
// Output: { _id: 'Option', _tag: 'Some', value: '123 Main St' }
```

**Signature**

```ts
declare const flatMap: { <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>; <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1047)

Since v2.0.0