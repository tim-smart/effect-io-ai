Package: `effect`<br />
Module: `Exit`<br />

## Exit.void

Provides a pre-allocated successful Exit with a `void` value.

**When to use**

Use when you need a shared successful `Exit` with no meaningful value.

**Details**

Equivalent to `Exit.succeed(undefined)` but shared as a single instance,
avoiding allocation for a common case.

**Example** (Referencing the void Exit)

```ts
import { Exit } from "effect"

const exit = Exit.void
console.log(Exit.isSuccess(exit)) // true
```

**See**

- `succeed` to create a success with a specific value
- `asVoid` to discard the value of an existing Exit

**Signature**

```ts
declare const void: Exit<void, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L374)

Since v2.0.0