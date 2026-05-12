Package: `effect`<br />
Module: `Option`<br />

## Option.orElseSome

Returns `Some` of the fallback value if `self` is `None`; otherwise returns
`self`.

**When to use**

- Providing a default plain value (not an `Option`) as fallback

**Behavior**

- `Some` → returns `self` unchanged
- `None` → calls `onNone()`, wraps result in `Some`, and returns it

**Example** (Providing a fallback value)

```ts
import { Option } from "effect"

console.log(Option.none().pipe(Option.orElseSome(() => "b")))
// Output: { _id: 'Option', _tag: 'Some', value: 'b' }

console.log(Option.some("a").pipe(Option.orElseSome(() => "b")))
// Output: { _id: 'Option', _tag: 'Some', value: 'a' }
```

**See**

- `orElse` when the fallback is itself an `Option`

**Signature**

```ts
declare const orElseSome: { <B>(onNone: LazyArg<B>): <A>(self: Option<A>) => Option<B | A>; <A, B>(self: Option<A>, onNone: LazyArg<B>): Option<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L744)

Since v2.0.0