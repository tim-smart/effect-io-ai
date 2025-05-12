Package: `effect`<br />
Module: `Effect`<br />

## Effect.custom

Low level constructor that enables for custom stack tracing cutpoints.

It is meant to be called with a bag of instructions that become available in
the "this" of the effect.

**Example**

```ts
import { Effect } from "effect"

const throwingFunction = () => { throw new Error() }
const blowUp = Effect.custom(throwingFunction, function() {
  return Effect.succeed(this.effect_instruction_i0())
})
```

**Signature**

```ts
declare const custom: { <X, A, E, R>(i0: X, body: (this: { effect_instruction_i0: X; }) => Effect<A, E, R>): Effect<A, E, R>; <X, Y, A, E, R>(i0: X, i1: Y, body: (this: { effect_instruction_i0: X; effect_instruction_i1: Y; }) => Effect<A, E, R>): Effect<A, E, R>; <X, Y, Z, A, E, R>(i0: X, i1: Y, i2: Z, body: (this: { effect_instruction_i0: X; effect_instruction_i1: Y; effect_instruction_i2: Z; }) => Effect<A, E, R>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2512)

Since v2.0.0