Package: `effect`<br />
Module: `Option`<br />

## Option.asVoid

Replaces the value inside a `Some` with `void` (`undefined`), leaving `None`
unchanged.

**When to use**

Use when you need to discard a present `Option` value while preserving
whether it was `Some` or `None`.

**Example** (Voiding the value)

```ts
import { Option } from "effect"

console.log(Option.asVoid(Option.some(42)))
// Output: { _id: 'Option', _tag: 'Some', value: undefined }

console.log(Option.asVoid(Option.none()))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `as` to replace with a specific constant

**Signature**

```ts
declare const asVoid: <_>(self: Option<_>) => Option<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1224)

Since v2.0.0