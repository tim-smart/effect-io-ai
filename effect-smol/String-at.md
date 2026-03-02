Package: `effect`<br />
Module: `String`<br />

## String.at

A `pipe`-able version of the native `charAt` method.

**Example**

```ts
import { pipe, String } from "effect"

pipe("abc", String.at(1)) // "b"
pipe("abc", String.at(4)) // undefined
```

**Signature**

```ts
declare const at: (index: number) => (self: string) => string | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L528)

Since v2.0.0