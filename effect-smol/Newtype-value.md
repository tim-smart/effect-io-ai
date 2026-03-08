Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.value

Unwraps a newtype value, returning the underlying carrier value.

- Use when you only need to read the inner value and do not need to wrap new
  values.
- For both wrapping and unwrapping, prefer `makeIso`.
- Zero runtime cost: this is an identity cast.

**Example** (unwrapping a newtype)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L167)

Since v4.0.0