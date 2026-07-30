Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.empty

Creates an empty `HashSet`.

Time complexity: **`O(1)`**

**Example**

```ts
import { HashSet, pipe } from "effect"

console.log(
  pipe(
    // Provide a type argument to create a HashSet of a specific type
    HashSet.empty<number>(),
    HashSet.add(1),
    HashSet.add(1), // Notice the duplicate
    HashSet.add(2),
    HashSet.toValues
  )
) // Output: [1, 2]
```

**See**

- Other `HashSet` constructors are `module:HashSet.make` `module:HashSet.fromIterable`

**Signature**

```ts
declare const empty: <A = never>() => HashSet<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L375)

Since v2.0.0