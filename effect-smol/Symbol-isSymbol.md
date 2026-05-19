Package: `effect`<br />
Module: `Symbol`<br />

## Symbol.isSymbol

Tests if a value is a `symbol`.

**Example** (Checking for symbols)

```ts
import { Symbol } from "effect"

console.log(Symbol.isSymbol(globalThis.Symbol.for("a"))) // true
console.log(Symbol.isSymbol("a")) // false
```

**Signature**

```ts
declare const isSymbol: (u: unknown) => u is symbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Symbol.ts#L30)

Since v2.0.0