Package: `effect`<br />
Module: `Param`<br />

## Param.map

Transforms the parsed value of an option using a mapping function.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

const port = Param.integer(Param.flagKind, "port").pipe(
  Param.map((n) => ({ port: n, url: `http://localhost:${n}` }))
)
```

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): <Kind extends ParamKind>(self: Param<Kind, A>) => Param<Kind, B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, f: (a: A) => B): Param<Kind, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L927)

Since v4.0.0