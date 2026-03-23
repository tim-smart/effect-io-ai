Package: `effect`<br />
Module: `Effect`<br />

## Effect.asVoid

This function maps the success value of an `Effect` value to `void`. If the
original `Effect` value succeeds, the returned `Effect` value will also
succeed. If the original `Effect` value fails, the returned `Effect` value
will fail with the same error.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.asVoid(Effect.succeed(42))

Effect.runPromise(program).then(console.log)
// undefined (void)
```

**Signature**

```ts
declare const asVoid: <A, E, R>(self: Effect<A, E, R>) => Effect<void, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2505)

Since v2.0.0