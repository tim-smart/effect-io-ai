Package: `effect`<br />
Module: `Effect`<br />

## Effect.void

Represents an effect that does nothing and produces no value.

**When to Use**

Use this effect when you need to represent an effect that does nothing.
This is useful in scenarios where you need to satisfy an effect-based
interface or control program flow without performing any operations. For
example, it can be used in situations where you want to return an effect
from a function but do not need to compute or return any result.

**Signature**

```ts
declare const void: Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3334)

Since v2.0.0