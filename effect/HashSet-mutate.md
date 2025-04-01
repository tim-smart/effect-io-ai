Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.mutate

Mutates the `HashSet` within the context of the provided function.

You can consider it a functional abstraction on top of the lower-level
mutation primitives of `module:HashSet.beginMutation` `->` `mutable
context` `->` `HashSet.endMutation`.

**Example**

```ts
// Syntax
import { HashSet, pipe } from "effect"

// with data-last, a.k.a. pipeable API
pipe(
  HashSet.make(1, 2, 3),
  HashSet.mutate((set) => {
    HashSet.add(set, 4)
    HashSet.remove(set, 1)
  })
)

// or piped with the pipe function
HashSet.make(1, 2, 3).pipe(
  HashSet.mutate((set) => {
    HashSet.add(set, 4)
    HashSet.remove(set, 1)
  })
)

// or with data-first API
HashSet.mutate(HashSet.make(1, 2, 3), (set) => {
  HashSet.add(set, 4)
  HashSet.remove(set, 1)
})
```

**See**

- Other `HashSet` mutations are `module:HashSet.add` `module:HashSet.remove` `module:HashSet.toggle` `module:HashSet.beginMutation` `module:HashSet.endMutation`

**Signature**

```ts
declare const mutate: { <A>(f: (set: HashSet<A>) => void): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, f: (set: HashSet<A>) => void): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1159)

Since v2.0.0