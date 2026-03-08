Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.makeIso

Creates an `Optic.Iso` for a newtype, providing both wrapping (`set`) and
unwrapping (`get`).

- Use this as the primary way to construct and deconstruct newtype values.
- The returned iso composes with other optics via the standard `Optic` API.
- Zero runtime cost: both directions are identity casts.

**Example** (wrapping and unwrapping with an iso)

```ts
import { Newtype } from "effect"

interface Label extends Newtype.Newtype<"Label", string> {}

const labelIso = Newtype.makeIso<Label>()

const label: Label = labelIso.set("world")
const str: string = labelIso.get(label) // "world"
```

**See**

- `value` — unwrap only

**Signature**

```ts
declare const makeIso: <N extends Newtype.Any>() => Optic.Iso<N, Newtype.Carrier<N>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L194)

Since v4.0.0