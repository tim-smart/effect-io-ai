Package: `effect`<br />
Module: `Result`<br />

## Result.match

Folds a `Result` into a single value by applying one of two functions.

**When to use**

Use when a `Result`'s success and failure branches should be collapsed into
one plain output type.

**Details**

- Applies `onSuccess` if the result is a `Success`
- Applies `onFailure` if the result is a `Failure`
- Both branches must return the same type (or a common supertype)

**Example** (Folding to a string)

```ts
import { pipe, Result } from "effect"

const format = Result.match({
  onSuccess: (n: number) => `Got ${n}`,
  onFailure: (e: string) => `Err: ${e}`
})

console.log(format(Result.succeed(42)))
// Output: "Got 42"

console.log(format(Result.fail("timeout")))
// Output: "Err: timeout"
```

**See**

- `merge` to extract `A | E` without mapping
- `getOrElse` to unwrap only the success with a fallback

**Signature**

```ts
declare const match: { <E, B, A, C = B>(options: { readonly onFailure: (error: E) => B; readonly onSuccess: (ok: A) => C; }): (self: Result<A, E>) => B | C; <A, E, B, C = B>(self: Result<A, E>, options: { readonly onFailure: (error: E) => B; readonly onSuccess: (ok: A) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L905)

Since v2.0.0