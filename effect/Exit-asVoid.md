Package: `effect`<br />
Module: `Exit`<br />

## Exit.asVoid

Discards the success value of an Exit, replacing it with `void`.

**When to use**

Use when you need to discard a successful `Exit` value while preserving
whether the `Exit` succeeded or failed.

**Details**

Failures pass through unchanged.

Allocates a new Exit if successful.

**Example** (Discarding the success value)

```ts
import { Exit } from "effect"

const exit = Exit.succeed(42)
const voided = Exit.asVoid(exit)
console.log(Exit.isSuccess(voided)) // true
```

**See**

- `void` for a pre-allocated void success
- `asVoidAll` to combine multiple exits into a single void Exit

**Signature**

```ts
declare const asVoid: <A, E>(self: Exit<A, E>) => Exit<void, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L955)

Since v2.0.0