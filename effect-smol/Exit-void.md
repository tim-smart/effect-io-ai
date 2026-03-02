Package: `effect`<br />
Module: `Exit`<br />

## Exit.void

A pre-allocated successful Exit with a `void` value.

- Use when you need a success Exit but do not care about the value
- Avoids allocating a new Exit for a common case

Equivalent to `Exit.succeed(undefined)` but shared as a single instance.

**Example** (Using the void Exit)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L365)

Since v2.0.0