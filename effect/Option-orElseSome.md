# orElseSome

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

To import and use `orElseSome` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.orElseSome
```

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
export declare const orElseSome: {
  <B>(onNone: LazyArg<B>): <A>(self: Option<A>) => Option<B | A>
  <A, B>(self: Option<A>, onNone: LazyArg<B>): Option<A | B>
}
```
