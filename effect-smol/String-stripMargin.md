Package: `effect`<br />
Module: `String`<br />

## String.stripMargin

For every line in this string, strip a leading prefix consisting of blanks
or control characters followed by the `"|"` character from the line.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L969)

Since v2.0.0