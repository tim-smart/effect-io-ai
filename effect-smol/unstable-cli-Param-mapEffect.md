Package: `effect`<br />
Module: `Param`<br />

## Param.mapEffect

Transforms the parsed value of an option using an effectful mapping function.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly
import { Effect } from "effect"
import { CliError } from "effect/unstable/cli"

const validatedEmail = Param.string(Param.flagKind, "email").pipe(
  Param.mapEffect((email) =>
    email.includes("@")
      ? Effect.succeed(email)
      : Effect.fail(
        new CliError.InvalidValue({
          option: "email",
          value: email,
          expected: "valid email format",
          kind: "flag"
        })
      )
  )
)
```

**Signature**

```ts
declare const mapEffect: { <A, B>(f: (a: A) => Effect.Effect<B, CliError.CliError, Environment>): <Kind extends ParamKind>(self: Param<Kind, A>) => Param<Kind, B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, f: (a: A) => Effect.Effect<B, CliError.CliError, Environment>): Param<Kind, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L987)

Since v4.0.0