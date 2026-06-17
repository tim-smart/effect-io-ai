Package: `effect`<br />
Module: `Equal`<br />

## Equal.isEqual

Checks whether a value implements the `Equal` interface.

**When to use**

Use when you need generic utility code to distinguish `Equal` implementors
from plain values before calling `[Equal.symbol]` directly.

**Details**

- Pure function, no side effects.
- Returns `true` if and only if `u` has a property keyed by
  `symbol`.
- Acts as a TypeScript type guard, narrowing the input to `Equal`.

**Example** (Checking Equal values)

```ts
import { Equal, Hash } from "effect"

class Token implements Equal.Equal {
  constructor(readonly value: string) {}
  [Equal.symbol](that: Equal.Equal): boolean {
    return that instanceof Token && this.value === that.value
  }
  [Hash.symbol](): number {
    return Hash.string(this.value)
  }
}

console.log(Equal.isEqual(new Token("abc"))) // true
console.log(Equal.isEqual({ x: 1 }))         // false
console.log(Equal.isEqual(42))                // false
```

**See**

- `Equal` — the interface being checked
- `symbol` — the property key that signals `Equal` support

**Signature**

```ts
declare const isEqual: (u: unknown) => u is Equal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equal.ts#L432)

Since v2.0.0