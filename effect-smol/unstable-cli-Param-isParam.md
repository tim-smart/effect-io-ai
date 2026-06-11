Package: `effect`<br />
Module: `Param`<br />

## Param.isParam

Type guard to check if a value is a Param.

**Example** (Checking for params)

```ts
import { Param } from "effect/unstable/cli"

// @internal - this module is not exported publicly

const maybeParam = Param.string(Param.flagKind, "name")

if (Param.isParam(maybeParam)) {
  console.log("This is a Param")
}
```

**Signature**

```ts
declare const isParam: (u: unknown) => u is Param<any, ParamKind>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L302)

Since v4.0.0