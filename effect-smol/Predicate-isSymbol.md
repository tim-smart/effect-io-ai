Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isSymbol

Checks whether a value is a `symbol`.

When to use:
- You need to guard an `unknown` value as a symbol.

Behavior:
- Pure; does not mutate input.
- Uses `typeof input === "symbol"`.

**Example** (Guard symbol)

```ts
import { Predicate } from "effect"

const data: unknown = Symbol.for("id")

if (Predicate.isSymbol(data)) {
  console.log(data.description)
}
```

See also: `isPropertyKey`

**Signature**

```ts
declare const isSymbol: (input: unknown) => input is symbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L670)

Since v2.0.0