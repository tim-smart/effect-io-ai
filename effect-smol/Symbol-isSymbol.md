Package: `effect`<br />
Module: `Symbol`<br />

## Symbol.isSymbol

Tests if a value is a `symbol`.

**Example** (Checking for symbols)

```ts
import { isSymbol } from "effect/Symbol"

console.log(isSymbol(Symbol.for("a"))) // true
console.log(isSymbol("a")) // false
```

**Signature**

```ts
declare const isSymbol: (u: unknown) => u is symbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Symbol.ts#L30)

Since v2.0.0