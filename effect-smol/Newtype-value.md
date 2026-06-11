Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.value

Unwraps a newtype value, returning the underlying carrier value.

**When to use**

Use when you need the carrier value from an existing newtype without
constructing a new newtype value at the same call site.

**Details**

This has zero runtime cost because it is an identity cast.

**Example** (Unwrapping a newtype)

```ts
import { Newtype } from "effect"

interface Label extends Newtype.Newtype<"Label", string> {}

const iso = Newtype.makeIso<Label>()
const label = iso.set("hello")

const raw: string = Newtype.value(label) // "hello"
```

**See**

- `makeIso` — two-way conversion (wrap and unwrap)

**Signature**

```ts
declare const value: <N extends Newtype.Any>(newtype: N) => Newtype.Carrier<N>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L144)

Since v4.0.0