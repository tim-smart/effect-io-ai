Package: `effect`<br />
Module: `Optic`<br />

## Optic.success

A `Prism` that focuses on the success value of a `Result`.

When to use:
- You have a `Result<A, E>` and want to read/update `A` only when it
  is a `Success`.

Behavior:
- `getResult` fails when the result is a `Failure`.
- `set(a)` produces `Result.succeed(a)`.

**Example** (accessing success)

```ts
import { Optic, Result } from "effect"

const _ok = Optic.id<Result.Result<number, string>>().compose(Optic.success())

console.log(Result.isSuccess(_ok.getResult(Result.succeed(42))))
// Output: true

console.log(Result.isFailure(_ok.getResult(Result.fail("err"))))
// Output: true
```

**See**

- `failure` — focuses on the failure side
- `Prism` — the type this function returns

**Signature**

```ts
declare const success: <A, E>() => Prism<Result.Result<A, E>, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L1678)

Since v4.0.0