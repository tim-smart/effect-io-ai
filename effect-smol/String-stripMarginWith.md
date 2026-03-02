Package: `effect`<br />
Module: `String`<br />

## String.stripMarginWith

For every line in this string, strip a leading prefix consisting of blanks
or control characters followed by the character specified by `marginChar`
from the line.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L937)

Since v2.0.0