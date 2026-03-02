Package: `effect`<br />
Module: `String`<br />

## String.search

Searches for a match between a regular expression and the string.

**Example**

```ts
import { String } from "effect"

String.search("ababb", "b") // 1
String.search("ababb", "/abb/") // 2
String.search("ababb", "d") // undefined
```

**Signature**

```ts
declare const search: { (regExp: RegExp | string): (self: string) => number | undefined; (self: string, regExp: RegExp | string): number | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L781)

Since v2.0.0