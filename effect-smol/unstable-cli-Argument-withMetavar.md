Package: `effect`<br />
Module: `Argument`<br />

## Argument.withMetavar

Sets a custom metavar (placeholder name) for the argument in help documentation.

The metavar is displayed in usage text to indicate what value the user should provide.
For example, `<FILE>` shows `FILE` as the metavar.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const port = Argument.integer("port").pipe(
  Argument.withMetavar("PORT")
)
```

**Signature**

```ts
declare const withMetavar: { <A>(metavar: string): (self: Argument<A>) => Argument<A>; <A>(self: Argument<A>, metavar: string): Argument<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L599)

Since v4.0.0