Package: `effect`<br />
Module: `String`<br />

## String.substring

Extracts characters from a string between two specified indices.

**Example**

```ts
import { pipe, String } from "effect"

pipe("abcd", String.substring(1)) // "bcd"
pipe("abcd", String.substring(1, 3)) // "bc"
```

**Signature**

```ts
declare const substring: (start: number, end?: number) => (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L510)

Since v2.0.0