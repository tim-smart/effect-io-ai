Package: `effect`<br />
Module: `Exit`<br />

## Exit.interrupt

Creates a failed Exit representing fiber interruption.

- Use to signal that a fiber was interrupted
- Optionally pass a fiber ID to identify which fiber was interrupted

Returns a `Failure<never>` with an `Interrupt` cause.

**Example** (Creating an interruption Exit)

```ts
import { Exit } from "effect"

const exit = Exit.interrupt(123)
console.log(Exit.isFailure(exit)) // true
console.log(Exit.hasInterrupts(exit)) // true
```

**See**

- `hasInterrupts` to check whether an Exit contains interruptions

**Signature**

```ts
declare const interrupt: (fiberId?: number | undefined) => Exit<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L338)

Since v2.0.0