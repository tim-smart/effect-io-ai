Package: `effect`<br />
Module: `Option`<br />

## Option.zipRight

Sequences two `Option`s, keeping the value from the second if both are `Some`.

**When to use**

Use when you need two `Option` values to both be `Some`, then keep only the
second value.

**Details**

- Both `Some` → returns `that`
- Either `None` → returns `None`

**Example** (Keeping the second value)

```ts
import { Option } from "effect"

console.log(Option.zipRight(Option.some(1), Option.some("hello")))
// Output: { _id: 'Option', _tag: 'Some', value: 'hello' }

console.log(Option.zipRight(Option.none(), Option.some("hello")))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `zipLeft` to keep the first value instead
- `zipWith` to combine both values

**Signature**

```ts
declare const zipRight: { <B>(that: Option<B>): <_>(self: Option<_>) => Option<B>; <X, B>(self: Option<X>, that: Option<B>): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1537)

Since v2.0.0