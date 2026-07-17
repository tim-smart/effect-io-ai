Package: `effect`<br />
Module: `Option`<br />

## Option.as

Replaces the value inside a `Some` with a constant, leaving `None` unchanged.

**When to use**

Use when you need to replace a present `Option` value while preserving
whether it was `Some` or `None`.

**Example** (Replacing a value)

```ts
import { Option } from "effect"

console.log(Option.as(Option.some(42), "new value"))
// Output: { _id: 'Option', _tag: 'Some', value: 'new value' }

console.log(Option.as(Option.none(), "new value"))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `asVoid` to replace with `undefined`
- `map` for a general transformation

**Signature**

```ts
declare const as: { <B>(b: B): <X>(self: Option<X>) => Option<B>; <X, B>(self: Option<X>, b: B): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1193)

Since v2.0.0