Package: `effect`<br />
Module: `Param`<br />

## Param.mapTryCatch

Transforms the parsed value of an option using a function that may throw,
converting any thrown errors into failure messages.

**Example** (Mapping thrown errors)

```ts
import { Param } from "effect/unstable/cli"

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Param.ts#L1127)

Since v4.0.0