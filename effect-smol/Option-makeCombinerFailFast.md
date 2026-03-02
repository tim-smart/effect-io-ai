Package: `effect`<br />
Module: `Option`<br />

## Option.makeCombinerFailFast

Creates a `Combiner` for `Option<A>` with fail-fast semantics: returns `None`
if either operand is `None`.

**When to use**

- Operations that require both values to be present

**Behavior**

- `None` + anything → `None`
- anything + `None` → `None`
- `Some(a)` + `Some(b)` → `Some(combine(a, b))`

**Example** (Fail-fast combining)

```ts
import { Number, Option } from "effect"

const combiner = Option.makeCombinerFailFast(Number.ReducerSum)
console.log(combiner.combine(Option.some(1), Option.some(2)))
// Output: { _id: 'Option', _tag: 'Some', value: 3 }

console.log(combiner.combine(Option.some(1), Option.none()))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `makeReducerFailFast` to get a full `Reducer`

**Signature**

```ts
declare const makeCombinerFailFast: <A>(combiner: Combiner.Combiner<A>) => Combiner.Combiner<Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2634)

Since v4.0.0