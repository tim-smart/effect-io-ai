Package: `effect`<br />
Module: `Param`<br />

## Param.map

Transforms the parsed value of an option using a mapping function.

**Example** (Mapping parsed values)

```ts
import { Param } from "effect/unstable/cli"

const port = Param.integer(Param.flagKind, "port").pipe(
  Param.map((n) => ({ port: n, url: `http://localhost:${n}` }))
)
```

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): <Kind extends ParamKind>(self: Param<Kind, A>) => Param<Kind, B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, f: (a: A) => B): Param<Kind, B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Param.ts#L1027)

Since v4.0.0