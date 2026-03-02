Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.isEmpty

Checks if the HashSet is empty.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const empty = HashSet.empty<string>()
console.log(HashSet.isEmpty(empty)) // true

const nonEmpty = HashSet.make("a")
console.log(HashSet.isEmpty(nonEmpty)) // false
```

**Signature**

```ts
declare const isEmpty: <V>(self: HashSet<V>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L321)

Since v2.0.0