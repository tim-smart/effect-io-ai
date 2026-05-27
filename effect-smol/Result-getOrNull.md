Package: `effect`<br />
Module: `Result`<br />

## Result.getOrNull

Extracts the success value, or returns `null` on failure.

**When to use**

Use with APIs that represent absence as `null`.

**Details**

- `Success<A>` returns `A`
- `Failure<E>` returns `null`

**Example** (Unwrapping to nullable)

```ts
import { Result } from "effect"

console.log(Result.getOrNull(Result.succeed(1)))
// Output: 1

console.log(Result.getOrNull(Result.fail("err")))
// Output: null
```

**See**

- `getOrUndefined` to return `undefined` instead
- `getOrElse` for a custom fallback

**Signature**

```ts
declare const getOrNull: <A, E>(self: Result<A, E>) => A | null
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1175)

Since v2.0.0