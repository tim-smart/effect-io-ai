Package: `effect`<br />
Module: `Match`<br />

## Match.symbol

Matches values of type `symbol`.

This predicate refines unknown values to symbols, allowing pattern matching
on symbol types. Symbols are unique identifiers that are often used as
object keys or for creating private properties.

**Example**

```ts
import { Match } from "effect"

const mySymbol = Symbol("my-symbol")
const globalSymbol = Symbol.for("global-symbol")

const handleSymbol = Match.type<unknown>().pipe(
  Match.when(Match.symbol, (sym) => {
    const description = sym.description
    if (description) {
      return `Symbol with description: ${description}`
    }
    return "Symbol without description"
  }),
  Match.orElse(() => "Not a symbol")
)

console.log(handleSymbol(mySymbol)) // "Symbol with description: my-symbol"
console.log(handleSymbol(Symbol())) // "Symbol without description"
console.log(handleSymbol("string")) // "Not a symbol"
```

**Signature**

```ts
declare const symbol: Predicate.Refinement<unknown, symbol>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1458)

Since v4.0.0