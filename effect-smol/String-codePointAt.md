Package: `effect`<br />
Module: `String`<br />

## String.codePointAt

Returns the Unicode code point at the specified index, or `None` if the index is out of bounds.

**Example**

```ts
import { pipe, String } from "effect"

pipe("abc", String.codePointAt(1)) // Option.some(98)
pipe("abc", String.codePointAt(10)) // Option.none()
```

**Signature**

```ts
declare const codePointAt: { (index: number): (self: string) => Option.Option<number>; (self: string, index: number): Option.Option<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L570)

Since v2.0.0