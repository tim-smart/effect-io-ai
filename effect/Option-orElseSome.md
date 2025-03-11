## orElseSome

Returns the provided default value wrapped in `Some` if the current `Option`
(`self`) is `None`; otherwise, returns `self`.

**Details**

This function provides a way to supply a default value for cases where an
`Option` is `None`. If the current `Option` is empty (`None`), the `onNone`
function is executed to compute the default value, which is then wrapped in a
`Some`. If the current `Option` contains a value (`Some`), it is returned as
is.

This is particularly useful for handling optional values where a fallback
default needs to be provided explicitly in case of absence.

**Example**

```ts
import { Option } from "effect"

console.log(Option.none().pipe(Option.orElseSome(() => "b")))
// Output: { _id: 'Option', _tag: 'Some', value: 'b' }

console.log(Option.some("a").pipe(Option.orElseSome(() => "b")))
// Output: { _id: 'Option', _tag: 'Some', value: 'a' }
```

**Signature**

```ts
declare const orElseSome: { <B>(onNone: LazyArg<B>): <A>(self: Option<A>) => Option<B | A>; <A, B>(self: Option<A>, onNone: LazyArg<B>): Option<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L581)

Since v2.0.0