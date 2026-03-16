Package: `effect`<br />
Module: `Option`<br />

## Option.asVoid

Replaces the value inside a `Some` with `void` (`undefined`), leaving `None`
unchanged.

**When to use**

- Discarding the value while preserving presence/absence

**Behavior**

- `Some` → `Some(undefined)`
- `None` → `None`

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1271)

Since v2.0.0