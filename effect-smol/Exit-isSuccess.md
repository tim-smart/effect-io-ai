Package: `effect`<br />
Module: `Exit`<br />

## Exit.isSuccess

Checks whether an Exit is a Success.

**When to use**

Use as a type guard to narrow `Exit<A, E>` to `Success<A, E>` and access the
`value` property.

**Example** (Narrowing to Success)

```ts
import { Exit } from "effect"

const exit = Exit.succeed(42)

if (Exit.isSuccess(exit)) {
  console.log(exit.value) // 42
}
```

**See**

- `isFailure` for the opposite check
- `match` for exhaustive pattern matching

**Signature**

```ts
declare const isSuccess: <A, E>(self: Exit<A, E>) => self is Success<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L450)

Since v2.0.0