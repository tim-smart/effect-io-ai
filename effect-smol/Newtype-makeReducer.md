Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.makeReducer

Lifts a `Reducer` for the carrier type into a `Reducer` for the newtype.

- Use when you need to fold/reduce over a collection of newtype values.
- The returned reducer delegates to the provided carrier reducer.

**Example** (reducing newtypes)

```ts
import { Newtype, Reducer } from "effect"

interface Score extends Newtype.Newtype<"Score", number> {}

const sum = Reducer.make<number>((a, b) => a + b, 0)
const reducer = Newtype.makeReducer<Score>(sum)
const iso = Newtype.makeIso<Score>()

const total = reducer.combineAll([iso.set(1), iso.set(2), iso.set(3)])
Newtype.value(total) // 6
```

**See**

- `makeCombiner` — lift a `Combiner` for the carrier

**Signature**

```ts
declare const makeReducer: <N extends Newtype.Any>(reducer: Reducer.Reducer<Newtype.Carrier<N>>) => Reducer.Reducer<N>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L307)

Since v4.0.0