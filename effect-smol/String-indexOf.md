Package: `effect`<br />
Module: `String`<br />

## String.indexOf

Returns the index of the first occurrence of a substring, or `None` if not found.

**Example**

```ts
import { pipe, String } from "effect"

pipe("abbbc", String.indexOf("b")) // 1
pipe("abbbc", String.indexOf("z")) // undefined
```

**Signature**

```ts
declare const indexOf: (searchString: string) => (self: string) => number | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L592)

Since v2.0.0