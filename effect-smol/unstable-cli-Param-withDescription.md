Package: `effect`<br />
Module: `Param`<br />

## Param.withDescription

Adds a description to an option for help text.

Descriptions provide users with information about what the option does
when they view help documentation.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

const verbose = Param.boolean(Param.flagKind, "verbose").pipe(
  Param.withAlias("-v"),
  Param.withDescription("Enable verbose output")
)
```

**Signature**

```ts
declare const withDescription: { <Kind extends ParamKind, A>(description: string): (self: Param<Kind, A>) => Param<Kind, A>; <Kind extends ParamKind, A>(self: Param<Kind, A>, description: string): Param<Kind, A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L910)

Since v4.0.0