## as

Replaces the value inside a `Some` with the specified constant value, leaving
`None` unchanged.

**Details**

This function transforms an `Option` by replacing the value inside a `Some`
with the given constant value `b`. If the `Option` is `None`, it remains
unchanged.

This is useful when you want to preserve the presence of a value (`Some`) but
replace its content with a fixed value.

**Example**

```ts
import { Option } from "effect"

// Replacing the value of a `Some`
const someValue = Option.some(42)

console.log(Option.as(someValue, "new value"))
// Output: { _id: 'Option', _tag: 'Some', value: 'new value' }

// Replacing a `None` (no effect)
const noneValue = Option.none<number>()

console.log(Option.as(noneValue, "new value"))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
declare const as: { <B>(b: B): <X>(self: Option<X>) => Option<B>; <X, B>(self: Option<X>, b: B): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L964)

Since v2.0.0