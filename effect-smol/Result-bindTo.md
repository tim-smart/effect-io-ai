Package: `effect`<br />
Module: `Result`<br />

## Result.bindTo

Wraps the success value of a `Result` into a named field, producing a
`Result<Record<N, A>>`. This is typically used to start a do-notation
chain from an existing `Result`.

**Example** (Wrapping a value into a named field)

```ts
import { pipe, Result } from "effect"

const result = pipe(
  Result.succeed(42),
  Result.bindTo("answer")
)
console.log(result)
// Output: { _tag: "Success", success: { answer: 42 }, ... }
```

**See**

- `Do` to start from an empty object
- `bind` to add more fields

**Signature**

```ts
declare const bindTo: { <N extends string>(name: N): <R, L>(self: Result<R, L>) => Result<Record<N, R>, L>; <R, L, N extends string>(self: Result<R, L>, name: N): Result<Record<N, R>, L>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1535)

Since v4.0.0