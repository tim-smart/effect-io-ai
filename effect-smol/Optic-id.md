Package: `effect`<br />
Module: `Optic`<br />

## Optic.id

Iso that focuses on the whole value unchanged.

**When to use**

Use when you need to start an optic chain with a focus on the whole value.

**Details**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L1552)

Since v4.0.0