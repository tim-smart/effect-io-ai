Package: `effect`<br />
Module: `String`<br />

## String.linesWithSeparators

Returns an `IterableIterator` which yields each line contained within the
string as well as the trailing newline character.

**Example**

```ts
import { String } from "effect"

const lines = String.linesWithSeparators("hello\nworld\n")
console.log(Array.from(lines)) // ["hello\n", "world\n"]
```

**Signature**

```ts
declare const linesWithSeparators: (s: string) => LinesIterator
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L911)

Since v2.0.0