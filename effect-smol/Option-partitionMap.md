Package: `effect`<br />
Module: `Option`<br />

## Option.partitionMap

Splits an `Option` into two `Option`s using a function that returns a `Result`.

**When to use**

- Categorizing an optional value into "left" (failure) and "right" (success) channels

**Behavior**

- `None` → `[None, None]`
- `Some` where `f` returns `Err` → `[Some(error), None]`
- `Some` where `f` returns `Ok` → `[None, Some(value)]`

**Example** (Partitioning by Result)

```ts
import { Option, Result } from "effect"

const parseNumber = (s: string): Result.Result<number, string> => {
  const n = Number(s)
  return isNaN(n) ? Result.fail("Not a number") : Result.succeed(n)
}

console.log(Option.partitionMap(Option.some("42"), parseNumber))
// Output: [{ _id: 'Option', _tag: 'None' }, { _id: 'Option', _tag: 'Some', value: 42 }]

console.log(Option.partitionMap(Option.some("abc"), parseNumber))
// Output: [{ _id: 'Option', _tag: 'Some', value: 'Not a number' }, { _id: 'Option', _tag: 'None' }]

console.log(Option.partitionMap(Option.none(), parseNumber))
// Output: [{ _id: 'Option', _tag: 'None' }, { _id: 'Option', _tag: 'None' }]
```

**See**

- `filter` for simple predicate-based filtering

**Signature**

```ts
declare const partitionMap: { <A, B, C>(f: (a: A) => Result<C, B>): (self: Option<A>) => [left: Option<B>, right: Option<C>]; <A, B, C>(self: Option<A>, f: (a: A) => Result<C, B>): [left: Option<B>, right: Option<C>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1962)

Since v2.0.0