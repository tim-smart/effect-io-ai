Package: `effect`<br />
Module: `Effect`<br />

## Effect.isEffect

Checks whether a value is an `Effect`.

**Example** (Checking whether a value is an Effect)

```ts
import { Effect } from "effect"

console.log(Effect.isEffect(Effect.succeed(1))) // true
console.log(Effect.isEffect("hello")) // false
```

**Signature**

```ts
declare const isEffect: (u: unknown) => u is Effect<any, any, any>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L229)

Since v2.0.0