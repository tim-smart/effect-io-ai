Package: `effect`<br />
Module: `Param`<br />

## Param.withAlias

Adds an alias to an option.

**When to use**

Use when you need a CLI parameter to accept an alternate name, such as "-f"
for "--force".

**Details**

This works on any param structure by recursively finding the underlying
`Single` node and applying the alias there.

**Example** (Adding parameter aliases)

```ts
import { Param } from "effect/unstable/cli"

const force = Param.boolean(Param.flagKind, "force").pipe(
  Param.withAlias("-f"),
  Param.withAlias("-F")
)

// Also works on composed params:
const count = Param.integer(Param.flagKind, "count").pipe(
  Param.optional,
  Param.withAlias("-c") // finds the underlying Single and adds alias
)
```

**Signature**

```ts
declare const withAlias: { <Kind extends ParamKind, A>(alias: string): (self: Param<Kind, A>) => Param<Kind, A>; <Kind extends ParamKind, A>(self: Param<Kind, A>, alias: string): Param<Kind, A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L938)

Since v4.0.0