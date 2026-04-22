Package: `effect`<br />
Module: `Effect`<br />

## Effect.succeedNone

Returns an effect which succeeds with `None`.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.succeedNone

Effect.runPromise(program).then(console.log)
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
declare const succeedNone: Effect<Option<never>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1197)

Since v2.0.0