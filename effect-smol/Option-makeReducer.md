Package: `effect`<br />
Module: `Option`<br />

## Option.makeReducer

Creates a `Reducer` for `Option<A>` that prioritizes the first non-`None`
value and combines values when both are `Some`.

**When to use**

- Building a reducer that falls back to the first available value
- Combining optional values where either side may be absent

**Behavior**

- `None` + `None` → `None`
- `Some(a)` + `None` → `Some(a)`
- `None` + `Some(b)` → `Some(b)`
- `Some(a)` + `Some(b)` → `Some(combine(a, b))`
- Initial value is `None`

**Example** (Reducing with first-wins semantics)

```ts
import { Number, Option } from "effect"

const reducer = Option.makeReducer(Number.ReducerSum)
console.log(reducer.combineAll([Option.some(1), Option.none(), Option.some(2)]))
// Output: { _id: 'Option', _tag: 'Some', value: 3 }
```

**See**

- `makeReducerFailFast` for fail-fast semantics

**Signature**

```ts
declare const makeReducer: <A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2593)

Since v4.0.0