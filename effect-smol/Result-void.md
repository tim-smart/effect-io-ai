Package: `effect`<br />
Module: `Result`<br />

## Result.void

Provides a pre-built successful `Result` that carries `undefined`.

**When to use**

Use when a success should signal completion without carrying a meaningful
value.

**Details**

This is equivalent to `Result.succeed(undefined)`, but reuses a shared
`Success` wrapper instead of allocating one each time.

**Example** (Using void result)

```ts
import { Result } from "effect"

const result: Result.Result<void> = Result.void

console.log(Result.isSuccess(result))
// Output: true
```

**See**

- `succeed` to create a Success with a specific value

**Signature**

```ts
declare const void: Result<void, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L400)

Since v3.13.0