# tuple

Similar to `Promise.all` but operates on `Predicate`s.

```
[Predicate<A>, Predicate<B>, ...] -> Predicate<[A, B, ...]>
```

To import and use `tuple` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.tuple
```

**Signature**

```ts
export declare const tuple: <T extends readonly Predicate<any>[]>(
  ...elements: T
) => Predicate<Readonly<{ [I in keyof T]: [T[I]] extends [Predicate<infer A>] ? A : never }>>
```
