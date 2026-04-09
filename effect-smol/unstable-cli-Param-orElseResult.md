Package: `effect`<br />
Module: `Param`<br />

## Param.orElseResult

Provides a fallback param, wrapping results in Either to distinguish which param succeeded.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1663)

Since v4.0.0