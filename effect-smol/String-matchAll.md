Package: `effect`<br />
Module: `String`<br />

## String.matchAll

It is the `pipe`-able version of the native `matchAll` method.

**Example**

```ts
import { pipe, String } from "effect"

const matches = pipe("hello world", String.matchAll(/l/g))
console.log(Array.from(matches)) // [["l"], ["l"], ["l"]]
```

**Signature**

```ts
declare const matchAll: (regExp: RegExp) => (self: string) => IterableIterator<RegExpMatchArray>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L668)

Since v2.0.0