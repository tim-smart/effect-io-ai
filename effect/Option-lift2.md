Package: `effect`<br />
Module: `Option`<br />

## Option.lift2

Lifts a binary function to work with `Option` values, allowing the function
to operate on two `Option`s.

**Details**

This function takes a binary function `f` and returns a new function that
applies `f` to the values of two `Option`s (`self` and `that`). If both
`Option`s are `Some`, the binary function `f` is applied to their values, and
the result is wrapped in a new `Some`. If either `Option` is `None`, the
result is `None`.

**Example**

```ts
import { Option } from "effect"

// A binary function to add two numbers
const add = (a: number, b: number): number => a + b

// Lift the `add` function to work with `Option` values
const addOptions = Option.lift2(add)

// Both `Option`s are `Some`
console.log(addOptions(Option.some(2), Option.some(3)))
// Output: { _id: 'Option', _tag: 'Some', value: 5 }

// One `Option` is `None`
console.log(addOptions(Option.some(2), Option.none()))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
declare const lift2: <A, B, C>(f: (a: A, b: B) => C) => { (that: Option<B>): (self: Option<A>) => Option<C>; (self: Option<A>, that: Option<B>): Option<C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1768)

Since v2.0.0