Package: `effect`<br />
Module: `Result`<br />

## Result.match

Folds a `Result` into a single value by applying one of two functions.

- Applies `onSuccess` if the result is a `Success`
- Applies `onFailure` if the result is a `Failure`
- Both branches must return the same type (or a common supertype)
- Use when you need to "exit" the `Result` type and produce a plain value

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L854)

Since v4.0.0