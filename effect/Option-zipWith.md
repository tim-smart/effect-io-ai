# zipWith

Combines two `Option` values into a new `Option` by applying a provided
function to their values.

**Details**

This function takes two `Option` values (`self` and `that`) and a combining
function `f`. If both `Option` values are `Some`, the function `f` is applied
to their values, and the result is wrapped in a new `Some`. If either
`Option` is `None`, the result is `None`.

This utility is useful for combining two optional computations into a single
result while maintaining type safety and avoiding explicit checks for `None`.

To import and use `zipWith` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.zipWith
```

**Example**

```ts
import { Option } from "effect"

const maybeName: Option.Option<string> = Option.some("John")
const maybeAge: Option.Option<number> = Option.some(25)

// Combine the name and age into a person object
const person = Option.zipWith(maybeName, maybeAge, (name, age) => ({
  name: name.toUpperCase(),
  age
}))

console.log(person)
// Output:
// { _id: 'Option', _tag: 'Some', value: { name: 'JOHN', age: 25 } }
```

**Signature**

```ts
export declare const zipWith: {
  <B, A, C>(that: Option<B>, f: (a: A, b: B) => C): (self: Option<A>) => Option<C>
  <A, B, C>(self: Option<A>, that: Option<B>, f: (a: A, b: B) => C): Option<C>
}
```
