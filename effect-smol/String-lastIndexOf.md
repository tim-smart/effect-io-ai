Package: `effect`<br />
Module: `String`<br />

## String.lastIndexOf

Returns the index of the last occurrence of a substring, or `None` if not found.

**Example**

```ts
import { pipe, String } from "effect"

pipe("abbbc", String.lastIndexOf("b")) // Option.some(3)
pipe("abbbc", String.lastIndexOf("d")) // Option.none()
```

**Signature**

```ts
declare const lastIndexOf: (searchString: string) => (self: string) => Option.Option<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L608)

Since v2.0.0