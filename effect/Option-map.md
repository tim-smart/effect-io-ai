## map

Transforms the value inside a `Some` to a new value using the provided
function, while leaving `None` unchanged.

**Details**

This function applies a mapping function `f` to the value inside an `Option`
if it is a `Some`. If the `Option` is `None`, it remains unchanged. The
result is a new `Option` with the transformed value (if it was a `Some`) or
still `None`.

This utility is particularly useful for chaining transformations in a
functional way without needing to manually handle `None` cases.

**Example**

```ts
import { Option } from "effect"

// Mapping over a `Some`
const someValue = Option.some(2)

console.log(Option.map(someValue, (n) => n * 2))
// Output: { _id: 'Option', _tag: 'Some', value: 4 }

// Mapping over a `None`
const noneValue = Option.none<number>()

console.log(Option.map(noneValue, (n) => n * 2))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): (self: Option<A>) => Option<B>; <A, B>(self: Option<A>, f: (a: A) => B): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L923)

Since v2.0.0