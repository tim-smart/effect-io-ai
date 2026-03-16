Package: `effect`<br />
Module: `String`<br />

## String.linesIterator

Returns an `IterableIterator` which yields each line contained within the
string, trimming off the trailing newline character.

**Example**

```ts
import { String } from "effect"

const lines = String.linesIterator("hello\nworld\n")
console.log(Array.from(lines)) // ["hello", "world"]
```

**Signature**

```ts
declare const linesIterator: (self: string) => LinesIterator
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L894)

Since v2.0.0