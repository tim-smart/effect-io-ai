Package: `effect`<br />
Module: `Result`<br />

## Result.getOrThrow

Extracts the success value or throws the raw failure value `E`.

- `Success<A>` returns `A`
- `Failure<E>` throws `E` directly
- Use `getOrThrowWith` for a custom error object

**Example** (Unwrapping or throwing)

```ts
import { Result } from "effect"

console.log(Result.getOrThrow(Result.succeed(1)))
// Output: 1

// This would throw the string "error":
// Result.getOrThrow(Result.fail("error"))
```

**See**

- `getOrThrowWith` for custom error mapping
- `getOrElse` for a non-throwing alternative

**Signature**

```ts
declare const getOrThrow: <A, E>(self: Result<A, E>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1148)

Since v4.0.0