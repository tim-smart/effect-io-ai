Package: `effect`<br />
Module: `String`<br />

## String.matchAll

Returns an iterator over all regular expression matches in the string using
native `String.prototype.matchAll` semantics.

**Example** (Iterating regular expression matches)

```ts
import { pipe, String } from "effect"

const matches = pipe("hello world", String.matchAll(/l/g))
console.log(
  Array.from(matches, (match) => `${match[0]}@${match.index}`).join(", ")
) // "l@2, l@3, l@9"
```

**Signature**

```ts
declare const matchAll: (regExp: RegExp) => (self: string) => IterableIterator<RegExpMatchArray>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L780)

Since v2.0.0