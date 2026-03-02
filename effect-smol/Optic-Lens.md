Package: `effect`<br />
Module: `Optic`<br />

## Optic.Lens

Focuses on exactly one part `A` inside a whole `S`.

When to use:
- You always have a value to read (the part exists unconditionally).
- You need the original `S` to produce the updated whole (unlike
  `Iso`).

Behavior:
- `get(s)` always succeeds and returns `A`.
- `replace(a, s)` returns a new `S` with the focused part replaced.
- Extends `Optional`.
- Composing a Lens with a `Prism` or `Optional` produces an
  `Optional`.

**Example** (focusing on a struct field)

```ts
import { Optic } from "effect"

type Person = { readonly name: string; readonly age: number }

const _name = Optic.id<Person>().key("name")

console.log(_name.get({ name: "Alice", age: 30 }))
// Output: "Alice"
```

**See**

- `makeLens` — constructor
- `Iso` — when conversion is lossless in both directions
- `Optional` — when reading can also fail

**Signature**

```ts
export interface Lens<in out S, in out A> extends Optional<S, A> {
  readonly get: (s: S) => A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L223)

Since v4.0.0