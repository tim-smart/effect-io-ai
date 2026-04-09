Package: `effect`<br />
Module: `Param`<br />

## Param.isSingle

Type guard to check if a param is a Single param (not composed).

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

const nameParam = Param.string(Param.flagKind, "name")
const optionalParam = Param.optional(nameParam)

console.log(Param.isSingle(nameParam)) // true
console.log(Param.isSingle(optionalParam)) // false
```

**Signature**

```ts
declare const isSingle: <const Kind extends ParamKind, A>(param: Param<Kind, A>) => param is Single<Kind, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L260)

Since v4.0.0