Package: `effect`<br />
Module: `Optic`<br />

## Optic.none

A `Prism` that focuses on `Option.None`, exposing `undefined`.

When to use:
- You want to match or construct `None` values within an optic chain.

Behavior:
- `getResult` succeeds with `undefined` when the option is `None`.
- `getResult` fails when the option is `Some`.
- `set(undefined)` produces `Option.none()`.

**Example** (matching None)

```ts
import { Optic, Option, Result } from "effect"

const _none = Optic.id<Option.Option<number>>().compose(Optic.none())

console.log(Result.isSuccess(_none.getResult(Option.none())))
// Output: true

console.log(Result.isFailure(_none.getResult(Option.some(1))))
// Output: true
```

**See**

- `some` — focuses on `Some` instead
- `Prism` — the type this function returns

**Signature**

```ts
declare const none: <A>() => Prism<Option.Option<A>, undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L1635)

Since v4.0.0