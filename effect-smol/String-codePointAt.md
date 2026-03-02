Package: `effect`<br />
Module: `String`<br />

## String.codePointAt

A `pipe`-able version of the native `codePointAt` method.

**Example**

```ts
import { pipe, String } from "effect"

pipe("abc", String.codePointAt(1)) // 98
pipe("abc", String.codePointAt(10)) // undefined
```

**Signature**

```ts
declare const codePointAt: (index: number) => (self: string) => number | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L573)

Since v2.0.0