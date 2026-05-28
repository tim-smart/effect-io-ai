Package: `effect`<br />
Module: `String`<br />

## String.stripMarginWith

Strips a leading margin prefix from every line using the supplied margin
character.

**Example** (Stripping custom margins)

```ts
import { String } from "effect"

const text = "  |hello\n  |world"
const result = String.stripMarginWith(text, "|")
console.log(result) // "hello\nworld"
```

**Signature**

```ts
declare const stripMarginWith: { (marginChar: string): (self: string) => string; (self: string, marginChar: string): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1068)

Since v2.0.0