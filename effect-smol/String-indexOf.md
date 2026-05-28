Package: `effect`<br />
Module: `String`<br />

## String.indexOf

Returns the index of the first occurrence of a substring safely, or `None` if not found.

**Example** (Finding the first substring index)

```ts
import { pipe, String } from "effect"

pipe("abbbc", String.indexOf("b")) // Option.some(1)
pipe("abbbc", String.indexOf("z")) // Option.none()
```

**Signature**

```ts
declare const indexOf: (searchString: string) => (self: string) => Option.Option<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L699)

Since v2.0.0