Package: `effect`<br />
Module: `String`<br />

## String.stripMargin

Strips a leading `|` margin prefix from every line.

**Example** (Stripping pipe margins)

```ts
import { String } from "effect"

const text = "  |hello\n  |world"
const result = String.stripMargin(text)
console.log(result) // "hello\nworld"
```

**Signature**

```ts
declare const stripMargin: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1049)

Since v2.0.0