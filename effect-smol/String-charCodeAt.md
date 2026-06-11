Package: `effect`<br />
Module: `String`<br />

## String.charCodeAt

Returns the character code at the specified index safely, or `None` if the index is out of bounds.

**Example** (Reading character codes)

```ts
import { String } from "effect"

String.charCodeAt("abc", 1) // Option.some(98)
String.charCodeAt("abc", 4) // Option.none()
```

**Signature**

```ts
declare const charCodeAt: { (index: number): (self: string) => Option.Option<number>; (self: string, index: number): Option.Option<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L537)

Since v2.0.0