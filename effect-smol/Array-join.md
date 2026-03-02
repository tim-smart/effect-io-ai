Package: `effect`<br />
Module: `Array`<br />

## Array.join

Joins string elements with a separator.

**Example** (Joining strings)

```ts
import { Array } from "effect"

console.log(Array.join(["a", "b", "c"], "-")) // "a-b-c"
```

**See**

- `intersperse` — insert separator elements without joining

**Signature**

```ts
declare const join: { (sep: string): (self: Iterable<string>) => string; (self: Iterable<string>, sep: string): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3965)

Since v2.0.0