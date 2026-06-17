Package: `effect`<br />
Module: `Result`<br />

## Result.failVoid

Provides a pre-built failed `Result` whose failure value is `undefined`.

**When to use**

Use when you need a failed `Result` value that acts only as a control signal
without failure data.

**Details**

This is equivalent to `Result.fail(undefined)` with type
`Result<never, void>`, but reuses a shared `Failure` wrapper instead of
allocating one each time.

**Example** (Failing without a payload)

```ts
import { Result } from "effect"

const result = Result.failVoid

console.log(Result.isFailure(result))
// Output: true
```

**See**

- `fail` to create a Failure with a specific value

**Signature**

```ts
declare const failVoid: Result<never, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L380)

Since v4.0.0