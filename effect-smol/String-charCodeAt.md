Package: `effect`<br />
Module: `String`<br />

## String.charCodeAt

Returns the character code at the specified index, or `undefined` if the index is out of bounds.

**Example**

```ts
import { String } from "effect"

String.charCodeAt("abc", 1) // 98
String.charCodeAt("abc", 4) // undefined
```

**Signature**

```ts
declare const charCodeAt: { (index: number): (self: string) => number | undefined; (self: string, index: number): number | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L485)

Since v2.0.0