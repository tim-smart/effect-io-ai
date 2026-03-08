Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.makeCombiner

Lifts a `Combiner` for the carrier type into a `Combiner` for the newtype.

- Use when you need to combine (e.g. concatenate, add) newtype values.
- The returned combiner delegates to the provided carrier combiner.

**Example** (combining newtypes)

```ts
import { Newtype, Combiner } from "effect"

interface Amount extends Newtype.Newtype<"Amount", number> {}

const sum = Combiner.make<number>((a, b) => a + b)
const combiner = Newtype.makeCombiner<Amount>(sum)
const iso = Newtype.makeIso<Amount>()

const total = combiner.combine(iso.set(10), iso.set(20))
Newtype.value(total) // 30
```

**See**

- `makeReducer` — lift a `Reducer` for the carrier

**Signature**

```ts
declare const makeCombiner: <N extends Newtype.Any>(combiner: Combiner.Combiner<Newtype.Carrier<N>>) => Combiner.Combiner<N>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L278)

Since v4.0.0