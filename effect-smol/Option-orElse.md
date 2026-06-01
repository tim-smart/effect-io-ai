Package: `effect`<br />
Module: `Option`<br />

## Option.orElse

Returns the fallback `Option` if `self` is `None`; otherwise returns `self`.

**When to use**

Use when you need a lazy fallback `Option`, such as when building priority
chains of optional values.

**Details**

- `Some` → returns `self` unchanged
- `None` → evaluates and returns `that()`
- `that` is lazily evaluated

**Example** (Providing a fallback Option)

```ts
import { Option } from "effect"

console.log(Option.none().pipe(Option.orElse(() => Option.some("b"))))
// Output: { _id: 'Option', _tag: 'Some', value: 'b' }

console.log(Option.some("a").pipe(Option.orElse(() => Option.some("b"))))
// Output: { _id: 'Option', _tag: 'Some', value: 'a' }
```

**See**

- `orElseSome` to wrap the fallback value in `Some` automatically
- `firstSomeOf` to pick the first `Some` from a collection

**Signature**

```ts
declare const orElse: { <B>(that: LazyArg<Option<B>>): <A>(self: Option<A>) => Option<B | A>; <A, B>(self: Option<A>, that: LazyArg<Option<B>>): Option<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L718)

Since v2.0.0