Package: `effect`<br />
Module: `Optic`<br />

## Optic.id

The identity `Iso`. Focuses on the whole value unchanged.

When to use:
- As the starting point of an optic chain: `Optic.id<S>().key("x")...`
- Anywhere an `Iso<S, S>` is needed.

Behavior:
- `get(s)` returns `s`.
- `set(a)` returns `a`.
- Singleton — every call returns the same instance.

**Example** (starting an optic chain)

```ts
import { Optic } from "effect"

type S = { readonly x: number }

const _x = Optic.id<S>().key("x")

console.log(_x.get({ x: 42 }))
// Output: 42
```

**See**

- `Iso` — the type this function returns

**Signature**

```ts
declare const id: <S>() => Iso<S, S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L1517)

Since v4.0.0