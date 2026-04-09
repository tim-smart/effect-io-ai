Package: `effect`<br />
Module: `Argument`<br />

## Argument.mapEffect

Transforms the parsed value of a positional argument using an effectful function.

**Example**

```ts
import { Effect } from "effect"
import { Argument, CliError } from "effect/unstable/cli"

const files = Argument.string("files").pipe(
  Argument.mapEffect((file) =>
    file.endsWith(".txt")
      ? Effect.succeed(file)
      : Effect.fail(
        new CliError.UserError({
          cause: new Error("Only .txt files allowed")
        })
      )
  )
)
```

**Signature**

```ts
declare const mapEffect: { <A, B>(f: (a: A) => Effect.Effect<B, CliError.CliError, Param.Environment>): (self: Argument<A>) => Argument<B>; <A, B>(self: Argument<A>, f: (a: A) => Effect.Effect<B, CliError.CliError, Param.Environment>): Argument<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L435)

Since v4.0.0