Package: `effect`<br />
Module: `Optic`<br />

## Optic.failure

A `Prism` that focuses on the failure value of a `Result`.

When to use:
- You have a `Result<A, E>` and want to read/update `E` only when it
  is a `Failure`.

Behavior:
- `getResult` fails when the result is a `Success`.
- `set(e)` produces `Result.fail(e)`.

**Example** (accessing failure)

```ts
import { Optic, Result } from "effect"

const _err = Optic.id<Result.Result<number, string>>().compose(Optic.failure())

console.log(Result.isSuccess(_err.getResult(Result.fail("oops"))))
// Output: true

console.log(Result.isFailure(_err.getResult(Result.succeed(42))))
// Output: true
```

**See**

- `success` — focuses on the success side
- `Prism` — the type this function returns

**Signature**

```ts
declare const failure: <A, E>() => Prism<Result.Result<A, E>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L1721)

Since v4.0.0