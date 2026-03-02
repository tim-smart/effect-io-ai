Package: `effect`<br />
Module: `Equal`<br />

## Equal.symbol

The unique string identifier for the `Equal` interface.

Use this as a computed property key when implementing custom equality on a
class or object literal.

When to use:
- As the method name when implementing the `Equal` interface.
- To check manually whether an object carries an equality method (prefer
  `isEqual` instead).

Behavior:
- Pure constant — no allocation or side effects.

**Example** (implementing Equal on a class)

```ts
import { Equal, Hash } from "effect"

class UserId implements Equal.Equal {
  constructor(readonly id: string) {}

  [Equal.symbol](that: Equal.Equal): boolean {
    return that instanceof UserId && this.id === that.id
  }

  [Hash.symbol](): number {
    return Hash.string(this.id)
  }
}
```

**See**

- `Equal` — the interface that uses this symbol
- `isEqual` — type guard for `Equal` implementors

**Signature**

```ts
declare const symbol: "~effect/interfaces/Equal"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equal.ts#L114)

Since v2.0.0