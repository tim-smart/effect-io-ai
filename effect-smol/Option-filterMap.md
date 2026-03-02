Package: `effect`<br />
Module: `Option`<br />

## Option.filterMap

Transforms and filters an `Option` using a `Filter` callback.

The callback returns a `Result`: `Result.succeed` keeps and transforms the
value, while `Result.fail` discards it.

**Example** (Filtering and transforming)

```ts
import { Option } from "effect"
import * as Result from "effect/Result"

console.log(Option.filterMap(
  Option.some(2),
  (n) => (n % 2 === 0 ? Result.succeed(`Even: ${n}`) : Result.failVoid)
))
// Output: { _id: 'Option', _tag: 'Some', value: 'Even: 2' }
```

**See**

- `filter` for predicate-based filtering

**Signature**

```ts
declare const filterMap: { <A, B, X>(f: Filter.Filter<A, B, X>): (self: Option<A>) => Option<B>; <A, B, X>(self: Option<A>, f: Filter.Filter<A, B, X>): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2000)

Since v2.0.0