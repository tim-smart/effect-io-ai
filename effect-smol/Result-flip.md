Package: `effect`<br />
Module: `Result`<br />

## Result.flip

Swaps the success and failure channels of a `Result`.

- `Success<A>` becomes `Failure<A>` (i.e., `Result<E, A>`)
- `Failure<E>` becomes `Success<E>` (i.e., `Result<E, A>`)
- Useful when you want to apply success-oriented operations (like `map`)
  to the error channel, then flip back

**Example** (Swapping channels)

```ts
import { Result } from "effect"

console.log(Result.flip(Result.succeed(42)))
// Output: { _tag: "Failure", failure: 42, ... }

console.log(Result.flip(Result.fail("error")))
// Output: { _tag: "Success", success: "error", ... }
```

**See**

- `mapError` to transform the error without swapping

**Signature**

```ts
declare const flip: <A, E>(self: Result<A, E>) => Result<E, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1378)

Since v4.0.0