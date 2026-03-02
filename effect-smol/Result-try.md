Package: `effect`<br />
Module: `Result`<br />

## Result.try

Wraps a synchronous computation that may throw into a `Result`.

- If the function returns normally, the result is `Success<A>`
- If the function throws, the exception is caught and becomes `Failure<E>`
- With a single function argument, the error type is `unknown`
- With `{ try, catch }` options, the `catch` function maps the thrown value to `E`

**Example** (Catching JSON parse errors)

```ts
import { Result } from "effect"

const ok = Result.try(() => JSON.parse('{"name": "Alice"}'))
console.log(ok)
// Output: { _tag: "Success", success: { name: "Alice" }, ... }

const err = Result.try({
  try: () => JSON.parse("not json"),
  catch: (e) => `Parse failed: ${e}`
})
console.log(Result.isFailure(err))
// Output: true
```

**See**

- `succeed` / `fail` for direct construction
- `fromNullishOr` for nullable values

**Signature**

```ts
declare const try: { <A, E>(options: { readonly try: LazyArg<A>; readonly catch: (error: unknown) => E; }): Result<A, E>; <A>(evaluate: LazyArg<A>): Result<A, unknown>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L518)

Since v4.0.0