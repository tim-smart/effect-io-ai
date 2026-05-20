Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.value

Unwraps a newtype value, returning the underlying carrier value.

**When to use**

Use this when you only need to read the inner value and do not need to wrap
new values. For both wrapping and unwrapping, prefer `makeIso`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L188)

Since v4.0.0