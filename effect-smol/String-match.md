Package: `effect`<br />
Module: `String`<br />

## String.match

Matches a string against a pattern and returns `Option.some` with the match
array, or `Option.none` when the pattern does not match.

**Example** (Matching regular expressions)

```ts
import { Option, pipe, String } from "effect"

const match = pipe("hello", String.match(/l+/))

if (Option.isSome(match)) {
  console.log(`${match.value[0]}@${match.value.index}`) // "ll@2"
}

console.log(Option.isNone(pipe("hello", String.match(/x/)))) // true
```

**Signature**

```ts
declare const match: (regExp: RegExp | string) => (self: string) => Option.Option<RegExpMatchArray>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L683)

Since v2.0.0