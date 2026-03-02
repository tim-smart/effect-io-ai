Package: `effect`<br />
Module: `Exit`<br />

## Exit.isFailure

Tests whether an Exit is a Failure.

- Use as a type guard to narrow `Exit<A, E>` to `Failure<A, E>`
- After narrowing, the `cause` property becomes accessible

**Example** (Narrowing to Failure)

```ts
import { Exit } from "effect"

const exit = Exit.fail("error")

if (Exit.isFailure(exit)) {
  console.log(exit.cause)
}
```

**See**

- `isSuccess` for the opposite check
- `match` for exhaustive pattern matching

**Signature**

```ts
declare const isFailure: <A, E>(self: Exit<A, E>) => self is Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L418)

Since v2.0.0