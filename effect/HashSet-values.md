Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.values

Returns an `IterableIterator` of the values in the `HashSet`.

Time complexity: **`O(1)`**

**Example**

```ts
import { HashSet, pipe } from "effect"

const numberIterable = pipe(
  HashSet.make(0, 1, 1, 2), // HashSet.HashSet<number>
  HashSet.values // takes an HashSet<A> and returns an IterableIterator<A>
)

for (const number of numberIterable) {
  console.log(number) // it will logs: 0, 1, 2
}
```

**See**

- Other `HashSet` getters are `toValues` `size`

**Signature**

```ts
declare const values: <A>(self: HashSet<A>) => IterableIterator<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L953)

Since v2.0.0