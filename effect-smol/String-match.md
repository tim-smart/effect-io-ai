Package: `effect`<br />
Module: `String`<br />

## String.match

A `pipe`-able version of the native `match` method.

**Example**

```ts
import { pipe, String } from "effect"

pipe("hello", String.match(/l+/)) // ["ll"]
pipe("hello", String.match(/x/)) // null
```

**Signature**

```ts
declare const match: (regExp: RegExp | string) => (self: string) => RegExpMatchArray | null
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L652)

Since v2.0.0