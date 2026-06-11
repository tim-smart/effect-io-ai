Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.isEmpty

Checks whether the HashSet is empty.

**Example** (Checking whether a HashSet is empty)

```ts
import { HashSet } from "effect"

const empty = HashSet.empty<string>()
console.log(HashSet.isEmpty(empty)) // true

const nonEmpty = HashSet.make("a")
console.log(HashSet.isEmpty(nonEmpty)) // false
```

**Signature**

```ts
declare const isEmpty: <V>(self: HashSet<V>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L345)

Since v4.0.0