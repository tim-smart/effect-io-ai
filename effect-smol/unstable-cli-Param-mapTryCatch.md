Package: `effect`<br />
Module: `Param`<br />

## Param.mapTryCatch

Transforms the parsed value of an option using a function that may throw,
converting any thrown errors into failure messages.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

const parsedJson = Param.string(Param.flagKind, "config").pipe(
  Param.mapTryCatch(
    (str) => JSON.parse(str),
    (error) =>
      `Invalid JSON: ${error instanceof Error ? error.message : String(error)}`
  )
)
```

**Signature**

```ts
declare const mapTryCatch: { <A, B>(f: (a: A) => B, onError: (error: unknown) => string): <Kind extends ParamKind>(self: Param<Kind, A>) => Param<Kind, B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, f: (a: A) => B, onError: (error: unknown) => string): Param<Kind, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1030)

Since v4.0.0