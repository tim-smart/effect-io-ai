Package: `effect`<br />
Module: `Result`<br />

## Result.fromNullishOr

Converts a possibly `null` or `undefined` value into a `Result`.

- Non-nullish values become `Success<NonNullable<A>>`
- `null` or `undefined` becomes `Failure<E>` using the provided function
- Supports both data-first and data-last (piped) usage
- The `onNullish` callback receives the original value

**Example** (Handling nullable values)

```ts
import { Result } from "effect"

console.log(Result.fromNullishOr(1, () => "fallback"))
// Output: { _tag: "Success", success: 1, ... }

console.log(Result.fromNullishOr(null, () => "fallback"))
// Output: { _tag: "Failure", failure: "fallback", ... }
```

**See**

- `fromOption` to convert from an Option
- `succeed` / `fail` for direct construction

**Signature**

```ts
declare const fromNullishOr: { <A, E>(onNullish: (a: A) => E): (self: A) => Result<NonNullable<A>, E>; <A, E>(self: A, onNullish: (a: A) => E): Result<NonNullable<A>, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L416)

Since v4.0.0