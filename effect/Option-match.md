Package: `effect`<br />
Module: `Option`<br />

## Option.match

Performs pattern matching on an `Option` to handle both `Some` and `None`
cases.

**Details**

This function allows you to match against an `Option` and handle both
scenarios: when the `Option` is `None` (i.e., contains no value), and when
the `Option` is `Some` (i.e., contains a value). It executes one of the
provided functions based on the case:

- If the `Option` is `None`, the `onNone` function is executed and its result
  is returned.
- If the `Option` is `Some`, the `onSome` function is executed with the
  contained value, and its result is returned.

This function provides a concise and functional way to handle optional values
without resorting to `if` or manual checks, making your code more declarative
and readable.

**Example** (Pattern Matching with Option)

```ts
import { Option } from "effect"

const foo = Option.some(1)

const message = Option.match(foo, {
  onNone: () => "Option is empty",
  onSome: (value) => `Option has a value: ${value}`
})

console.log(message)
// Output: "Option has a value: 1"
```

**Signature**

```ts
declare const match: { <B, A, C = B>(options: { readonly onNone: LazyArg<B>; readonly onSome: (a: A) => C; }): (self: Option<A>) => B | C; <A, B, C = B>(self: Option<A>, options: { readonly onNone: LazyArg<B>; readonly onSome: (a: A) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L299)

Since v2.0.0