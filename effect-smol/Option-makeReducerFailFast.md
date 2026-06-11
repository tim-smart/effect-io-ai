Package: `effect`<br />
Module: `Option`<br />

## Option.makeReducerFailFast

Creates a `Reducer` for `Option<A>` by lifting an existing `Reducer` with
fail-fast semantics.

**When to use**

Use when you need to reduce `Option` values with fail-fast semantics, where
any `None` aborts the entire result instead of being skipped.

**Details**

- Initial value is `Some(reducer.initialValue)`
- Combines only when both operands are `Some`
- Any `None` causes the result to become `None` immediately

**Example** (Fail-fast reducing)

```ts
import { Number, Option } from "effect"

const reducer = Option.makeReducerFailFast(Number.ReducerSum)
console.log(reducer.combineAll([Option.some(1), Option.some(2)]))
// Output: { _id: 'Option', _tag: 'Some', value: 3 }

console.log(reducer.combineAll([Option.some(1), Option.none()]))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `makeCombinerFailFast` for just the combiner
- `makeReducer` for non-fail-fast semantics

**Signature**

```ts
declare const makeReducerFailFast: <A>(reducer: Reducer.Reducer<A>) => Reducer.Reducer<Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2653)

Since v4.0.0