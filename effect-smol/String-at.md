Package: `effect`<br />
Module: `String`<br />

## String.at

Returns the character at the specified relative index safely, or `None` if the index is out of bounds.

**Example** (Accessing characters safely)

```ts
import { pipe, String } from "effect"

pipe("abc", String.at(1)) // Option.some("b")
pipe("abc", String.at(4)) // Option.none()
```

**Signature**

```ts
declare const at: { (index: number): (self: string) => Option.Option<string>; (self: string, index: number): Option.Option<string>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L578)

Since v2.0.0