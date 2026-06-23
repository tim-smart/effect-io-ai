Package: `effect`<br />
Module: `Param`<br />

## Param.filter

Filters parsed values, failing with a custom error message if the predicate returns false.

**Example** (Filtering parsed values)

```ts
import { Param } from "effect/unstable/cli"

const evenNumber = Param.integer(Param.flagKind, "num").pipe(
  Param.filter(
    (n) => n % 2 === 0,
    (n) => `Expected even number, got ${n}`
  )
)
```

**Signature**

```ts
declare const filter: { <A>(predicate: Predicate.Predicate<A>, onFalse: (a: A) => string): <Kind extends ParamKind>(self: Param<Kind, A>) => Param<Kind, A>; <Kind extends ParamKind, A>(self: Param<Kind, A>, predicate: Predicate.Predicate<A>, onFalse: (a: A) => string): Param<Kind, A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1647)

Since v4.0.0