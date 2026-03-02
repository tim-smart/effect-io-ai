Package: `effect`<br />
Module: `Optic`<br />

## Optic.Prism

Focuses on a part `A` of `S` that may not be present (e.g. a union
variant or a validated subset).

When to use:
- The focus is conditional — reading can fail (wrong variant, failed
  validation).
- Building a new `S` from `A` does **not** require the original `S`.

Behavior:
- `getResult(s)` returns `Result.Success<A>` when the focus matches, or
  `Result.Failure<string>` with an error message.
- `set(a)` always succeeds and returns a new `S`.
- Extends `Optional`.
- Composing two Prisms produces a Prism; composing a Prism with a
  `Lens` produces an `Optional`.

**Example** (narrowing a tagged union)

```ts
import { Optic, Result } from "effect"

type Shape =
  | { readonly _tag: "Circle"; readonly radius: number }
  | { readonly _tag: "Rect"; readonly width: number }

const _circle = Optic.id<Shape>().tag("Circle")

console.log(Result.isSuccess(_circle.getResult({ _tag: "Circle", radius: 5 })))
// Output: true

console.log(Result.isFailure(_circle.getResult({ _tag: "Rect", width: 10 })))
// Output: true
```

**See**

- `makePrism` — constructor
- `fromChecks` — build a Prism from schema checks
- `Lens` — when reading always succeeds

**Signature**

```ts
export interface Prism<in out S, in out A> extends Optional<S, A> {
  readonly set: (a: A) => S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L308)

Since v4.0.0