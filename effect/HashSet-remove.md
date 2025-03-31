Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.remove

Removes a value from the `HashSet`.

Time complexity: **`O(1)`** average

**Example**

```ts
**Syntax**

```ts
import { HashSet, pipe } from "effect"

// with `data-last`, a.k.a. `pipeable` API
pipe(HashSet.make(0, 1, 2), HashSet.remove(0))

// or piped with the pipe function
HashSet.make(0, 1, 2).pipe(HashSet.remove(0))

// or with `data-first` API
HashSet.remove(HashSet.make(0, 1, 2), 0)
```
```

**See**

- Other `HashSet` mutations are `add` `toggle` `beginMutation` `endMutation` `mutate`

**Signature**

```ts
declare const remove: { <A>(value: A): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, value: A): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1309)

Since v2.0.0