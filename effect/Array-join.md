## join

Joins the elements together with "sep" in the middle.

**Example**

```ts
import { Array } from "effect"

const strings = ["a", "b", "c"]
const joined = Array.join(strings, "-")
console.log(joined) // "a-b-c"
```

**Signature**

```ts
declare const join: { (sep: string): (self: Iterable<string>) => string; (self: Iterable<string>, sep: string): string; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3100)

Since v2.0.0