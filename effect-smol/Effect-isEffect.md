Package: `effect`<br />
Module: `Effect`<br />

## Effect.isEffect

Tests if a value is an `Effect`.

**Example**

```ts
import { Effect } from "effect"

console.log(Effect.isEffect(Effect.succeed(1))) // true
console.log(Effect.isEffect("hello")) // false
```

**Signature**

```ts
declare const isEffect: (u: unknown) => u is Effect<any, any, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L363)

Since v2.0.0