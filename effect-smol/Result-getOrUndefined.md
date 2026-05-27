Package: `effect`<br />
Module: `Result`<br />

## Result.getOrUndefined

Extracts the success value, or returns `undefined` on failure.

**When to use**

Use with APIs that represent absence as `undefined`.

**Details**

- `Success<A>` returns `A`
- `Failure<E>` returns `undefined`

**Example** (Unwrapping to optional)

```ts
import { Result } from "effect"

console.log(Result.getOrUndefined(Result.succeed(1)))
// Output: 1

console.log(Result.getOrUndefined(Result.fail("err")))
// Output: undefined
```

**See**

- `getOrNull` to return `null` instead
- `getOrElse` for a custom fallback

**Signature**

```ts
declare const getOrUndefined: <A, E>(self: Result<A, E>) => A | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1207)

Since v2.0.0