Package: `effect`<br />
Module: `Exit`<br />

## Exit.die

Creates a failed Exit from a defect (unexpected error).

- Use for unexpected, unrecoverable errors that should not appear in the typed error channel
- The defect is wrapped in a `Cause.Die` internally

Returns a `Failure<never>` with `E = never`, since defects do not appear in
the typed error channel.

**Example** (Creating a defect Exit)

```ts
import { Exit } from "effect"

const exit = Exit.die(new Error("Unexpected error"))
console.log(Exit.isFailure(exit)) // true
```

**See**

- `fail` to create a Failure from a typed error
- `hasDies` to check whether an Exit contains defects

**Signature**

```ts
declare const die: (defect: unknown) => Exit<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L313)

Since v2.0.0