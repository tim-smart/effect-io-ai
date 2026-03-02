Package: `effect`<br />
Module: `Flag`<br />

## Flag.withDefault

Provides a default value for a flag when it's not specified.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const portFlag = Flag.integer("port").pipe(
  Flag.withDefault(8080)
)
// If --port is not provided, defaults to 8080

const hostFlag = Flag.string("host").pipe(
  Flag.withDefault("localhost")
)
// If --host is not provided, defaults to "localhost"
```

**Signature**

```ts
declare const withDefault: { <const B>(defaultValue: B | Effect.Effect<B, CliError.CliError, Param.Environment>): <A>(self: Flag<A>) => Flag<A | B>; <A, const B>(self: Flag<A>, defaultValue: B | Effect.Effect<B, CliError.CliError, Param.Environment>): Flag<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L496)

Since v4.0.0