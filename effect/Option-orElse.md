## orElse

Returns the provided `Option` `that` if the current `Option` (`self`) is
`None`; otherwise, it returns `self`.

**Details**

This function provides a fallback mechanism for `Option` values. If the
current `Option` is `None` (i.e., it contains no value), the `that` function
is evaluated, and its resulting `Option` is returned. If the current `Option`
is `Some` (i.e., it contains a value), the original `Option` is returned
unchanged.

This is particularly useful for chaining fallback values or computations,
allowing you to provide alternative `Option` values when the first one is
empty.

**Example**

```ts
import { Option } from "effect"

console.log(Option.none().pipe(Option.orElse(() => Option.none())))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.some("a").pipe(Option.orElse(() => Option.none())))
// Output: { _id: 'Option', _tag: 'Some', value: 'a' }

console.log(Option.none().pipe(Option.orElse(() => Option.some("b"))))
// Output: { _id: 'Option', _tag: 'Some', value: 'b' }

console.log(Option.some("a").pipe(Option.orElse(() => Option.some("b"))))
// Output: { _id: 'Option', _tag: 'Some', value: 'a' }
```

**Signature**

```ts
declare const orElse: { <B>(that: LazyArg<Option<B>>): <A>(self: Option<A>) => Option<B | A>; <A, B>(self: Option<A>, that: LazyArg<Option<B>>): Option<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L544)

Since v2.0.0