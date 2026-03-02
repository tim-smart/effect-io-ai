Package: `effect`<br />
Module: `Equal`<br />

## Equal.isEqual

Checks whether a value implements the `Equal` interface.

When to use:
- To branch on whether a value supports custom equality before calling
  its `[Equal.symbol]` method directly.
- In generic utility code that needs to distinguish `Equal` implementors
  from plain values.

Behavior:
- Pure function, no side effects.
- Returns `true` if and only if `u` has a property keyed by
  `symbol`.
- Acts as a TypeScript type guard, narrowing the input to `Equal`.

**Example** (type guard)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equal.ts#L478)

Since v2.0.0