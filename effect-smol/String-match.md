Package: `effect`<br />
Module: `String`<br />

## String.match

A `pipe`-able version of the native `match` method.

**Example**

```ts
import { pipe, String } from "effect"

pipe("hello", String.match(/l+/)) // Option.some(["ll"])
pipe("hello", String.match(/x/)) // Option.none()
```

**Signature**

```ts
declare const match: (regExp: RegExp | string) => (self: string) => Option.Option<RegExpMatchArray>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L646)

Since v2.0.0