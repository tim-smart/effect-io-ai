Package: `effect`<br />
Module: `Effect`<br />

## Effect.succeedSome

Returns an effect which succeeds with the value wrapped in a `Some`.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.succeedSome(42)

Effect.runPromise(program).then(console.log)
// Output: { _id: 'Option', _tag: 'Some', value: 42 }
```

**Signature**

```ts
declare const succeedSome: <A>(value: A) => Effect<Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1215)

Since v2.0.0