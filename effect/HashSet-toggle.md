Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.toggle

Checks if a value is present in the `HashSet`. If it is present, the value
will be removed from the `HashSet`, otherwise the value will be added to the
`HashSet`.

Time complexity: **`O(1)`** average

**Example**

```ts
**Syntax**

```ts
import { HashSet, pipe } from "effect"

// with `data-last`, a.k.a. `pipeable` API
pipe(HashSet.make(0, 1, 2), HashSet.toggle(0))

// or piped with the pipe function
HashSet.make(0, 1, 2).pipe(HashSet.toggle(0))

// or with `data-first` API
HashSet.toggle(HashSet.make(0, 1, 2), 0)
```
```

**See**

- Other `HashSet` mutations are `add` `remove` `beginMutation` `endMutation` `mutate`

**Signature**

```ts
declare const toggle: { <A>(value: A): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, value: A): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1666)

Since v2.0.0