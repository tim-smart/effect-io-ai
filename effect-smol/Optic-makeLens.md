Package: `effect`<br />
Module: `Optic`<br />

## Optic.makeLens

Creates a `Lens` from a getter and a replacer.

When to use:
- You can always extract `A` from `S` and produce a new `S` by
  substituting a new `A`.

Behavior:
- Does not mutate inputs.
- `replace(a, s)` should return a structurally new `S` with `a` in place
  of the old focus.

**Example** (lens into the first element of a pair)

```ts
import { Optic } from "effect"

const _first = Optic.makeLens<readonly [string, number], string>(
  (pair) => pair[0],
  (s, pair) => [s, pair[1]]
)

console.log(_first.get(["hello", 42]))
// Output: "hello"

console.log(_first.replace("world", ["hello", 42]))
// Output: ["world", 42]
```

**See**

- `Lens` — the type this function returns
- `makeIso` — when no original `S` is needed for `set`

**Signature**

```ts
declare const makeLens: <S, A>(get: (s: S) => A, replace: (a: A, s: S) => S) => Lens<S, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L262)

Since v4.0.0