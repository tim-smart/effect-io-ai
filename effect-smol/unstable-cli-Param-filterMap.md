Package: `effect`<br />
Module: `Param`<br />

## Param.filterMap

Filters and transforms parsed values, failing with a custom error message
if the filter function returns None.

This combinator is useful for validation and transformation in a single step.

**Example**

```ts
import { Option } from "effect"
import * as Param from "effect/unstable/cli/Param"
// @internal - this module is not exported publicly

const positiveInt = Param.integer(Param.flagKind, "count").pipe(
  Param.filterMap(
    (n) => n > 0 ? Option.some(n) : Option.none(),
    (n) => `Expected positive integer, got ${n}`
  )
)
```

**Signature**

```ts
declare const filterMap: { <A, B>(filter: (a: A) => Option.Option<B>, onNone: (a: A) => string): <Kind extends ParamKind>(self: Param<Kind, A>) => Param<Kind, B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, filter: (a: A) => Option.Option<B>, onNone: (a: A) => string): Param<Kind, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1440)

Since v4.0.0