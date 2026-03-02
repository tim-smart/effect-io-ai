Package: `effect`<br />
Module: `Types`<br />

## Types.Equals

Determines if two types are exactly equal at the type level.

- Use in conditional types or type-level tests to assert type equality.
- Resolves to `true` if `X` and `Y` are identical, `false` otherwise.

Behavior:
- Uses the `<T>() => T extends X ? 1 : 2` trick for exact equality,
  distinguishing between `any`, `unknown`, `never`, and other types.

**Example** (Type equality check)

```ts
import type { Types } from "effect"

type Yes = Types.Equals<{ a: number }, { a: number }> // true
type No = Types.Equals<{ a: number }, { a: string }> // false
type AnyCheck = Types.Equals<any, string> // false
```

**See**

- `EqualsWith`

**Signature**

```ts
type Equals<X, Y> = (<T>() => T extends X ? 1 : 2) extends <
  T
>() => T extends Y ? 1 : 2 ? true
  : false
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L292)

Since v2.0.0