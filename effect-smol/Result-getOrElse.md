Package: `effect`<br />
Module: `Result`<br />

## Result.getOrElse

Extracts the success value, or computes a fallback from the error.

- `Success<A>` returns the inner value
- `Failure<E>` applies `onFailure` to the error and returns the result
- The return type is `A | A2` (union of both branches)

**Example** (Providing a fallback)

```ts
import { Result } from "effect"

console.log(Result.getOrElse(Result.succeed(1), () => 0))
// Output: 1

console.log(Result.getOrElse(Result.fail("err"), () => 0))
// Output: 0
```

**See**

- `getOrNull` / `getOrUndefined` for simpler fallbacks
- `getOrThrow` to throw on failure
- `match` to map both branches

**Signature**

```ts
declare const getOrElse: { <E, A2>(onFailure: (err: E) => A2): <A>(self: Result<A, E>) => A2 | A; <A, E, A2>(self: Result<A, E>, onFailure: (err: E) => A2): A | A2; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1019)

Since v4.0.0