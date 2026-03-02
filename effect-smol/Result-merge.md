Package: `effect`<br />
Module: `Result`<br />

## Result.merge

Unwraps a `Result` into `A | E` by returning the inner value regardless
of whether it is a success or failure.

- `Success<A>` returns `A`
- `Failure<E>` returns `E`
- Useful when both channels share a compatible type

**Example** (Extracting the inner value)

```ts
import { Result } from "effect"

console.log(Result.merge(Result.succeed(42)))
// Output: 42

console.log(Result.merge(Result.fail("error")))
// Output: "error"
```

**See**

- `match` to map each branch to a common type
- `getOrElse` to provide a fallback for failures

**Signature**

```ts
declare const merge: <A, E>(self: Result<A, E>) => E | A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L991)

Since v4.0.0