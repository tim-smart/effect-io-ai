Package: `effect`<br />
Module: `Argument`<br />

## Argument.withDefault

Provides a default value for a positional argument.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const port = Argument.integer("port").pipe(Argument.withDefault(8080))
```

**Signature**

```ts
declare const withDefault: { <const B>(defaultValue: B | Effect.Effect<B, CliError.CliError, Param.Environment>): <A>(self: Argument<A>) => Argument<A | B>; <A, const B>(self: Argument<A>, defaultValue: B | Effect.Effect<B, CliError.CliError, Param.Environment>): Argument<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L309)

Since v4.0.0