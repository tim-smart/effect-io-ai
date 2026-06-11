Package: `effect`<br />
Module: `String`<br />

## String.search

Returns the index of the first match for a string or regular expression safely, or
`Option.none` when no match is found.

**Example** (Searching strings)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L846)

Since v2.0.0