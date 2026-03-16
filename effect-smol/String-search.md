Package: `effect`<br />
Module: `String`<br />

## String.search

Searches for a match between a regular expression and the string.

**Example**

```ts
import { String } from "effect"

String.search("ababb", "b") // Option.some(1)
String.search("ababb", /abb/) // Option.some(2)
String.search("ababb", "d") // Option.none()
```

**Signature**

```ts
declare const search: { (regExp: RegExp | string): (self: string) => Option.Option<number>; (self: string, regExp: RegExp | string): Option.Option<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L776)

Since v2.0.0