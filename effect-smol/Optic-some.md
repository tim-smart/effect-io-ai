Package: `effect`<br />
Module: `Optic`<br />

## Optic.some

A `Prism` that focuses on the value inside `Option.Some`.

When to use:
- You have an `Option<A>` and want to read/update the inner value only
  when it is `Some`.

Behavior:
- `getResult` fails with an error message when the option is `None`.
- `set(a)` wraps `a` in `Option.some(a)`.

**Example** (accessing Some value)

```ts
import { Optic, Option, Result } from "effect"

const _some = Optic.id<Option.Option<number>>().compose(Optic.some())

console.log(Result.isSuccess(_some.getResult(Option.some(42))))
// Output: true

console.log(Result.isFailure(_some.getResult(Option.none())))
// Output: true

console.log(_some.set(10))
// Output: { _tag: "Some", value: 10 }
```

**See**

- `none` — focuses on `None` instead
- `Prism` — the type this function returns

**Signature**

```ts
declare const some: <A>() => Prism<Option.Option<A>, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L1592)

Since v4.0.0