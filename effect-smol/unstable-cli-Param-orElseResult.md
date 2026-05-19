Package: `effect`<br />
Module: `Param`<br />

## Param.orElseResult

Provides a fallback param and returns a `Result` indicating which param
succeeded.

The original param's value is returned as `Result.succeed`, while the
fallback param's value is returned as `Result.fail`.

**Example** (Returning fallback results)

```ts
import { Param } from "effect/unstable/cli"

// @internal - this module is not exported publicly

const configSource = Param.file(Param.flagKind, "config").pipe(
  Param.orElseResult(() => Param.string(Param.flagKind, "config-url"))
)
// Returns Result<string, string>
```

**Signature**

```ts
declare const orElseResult: { <Kind extends ParamKind, B>(orElse: (error: CliError.CliError) => Param<Kind, B>): <A>(self: Param<Kind, A>) => Param<Kind, Result.Result<A, B>>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, orElse: (error: CliError.CliError) => Param<Kind, B>): Param<Kind, Result.Result<A, B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1764)

Since v4.0.0