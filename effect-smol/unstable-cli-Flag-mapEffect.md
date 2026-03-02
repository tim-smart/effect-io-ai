Package: `effect`<br />
Module: `Flag`<br />

## Flag.mapEffect

Transforms the parsed value using an Effect that can perform IO operations.

**Example**

```ts
import { Effect, FileSystem } from "effect"
import { Flag } from "effect/unstable/cli"

// Read file size from path flag
const fileSizeFlag = Flag.file("input").pipe(
  Flag.mapEffect(Effect.fnUntraced(function*(path) {
    const fs = yield* FileSystem.FileSystem
    const stats = yield* Effect.orDie(fs.stat(path))
    return stats.size
  }))
)
```

**Signature**

```ts
declare const mapEffect: { <A, B>(f: (a: A) => Effect.Effect<B, CliError.CliError, Param.Environment>): (self: Flag<A>) => Flag<B>; <A, B>(self: Flag<A>, f: (a: A) => Effect.Effect<B, CliError.CliError, Param.Environment>): Flag<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L589)

Since v4.0.0