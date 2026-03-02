Package: `effect`<br />
Module: `String`<br />

## String.charAt

Returns the character at the specified index, or `None` if the index is out of bounds.

**Example**

```ts
import { pipe, String } from "effect"

pipe("abc", String.charAt(1)) // "b"
pipe("abc", String.charAt(4)) // undefined
```

**Signature**

```ts
declare const charAt: { (index: number): (self: string) => string | undefined; (self: string, index: number): string | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L547)

Since v2.0.0