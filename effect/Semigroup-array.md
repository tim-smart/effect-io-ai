# array

Given a type `A`, this function creates and returns a `Semigroup` for `ReadonlyArray<A>`.
The returned `Semigroup` combines two arrays by concatenating them.

To import and use `array` from the "Semigroup" module:

```ts
import * as Semigroup from "@effect/typeclass/Semigroup"
// Can be accessed like this
Semigroup.array
```

**Signature**

```ts
export declare const array: <A>() => Semigroup<readonly A[]>
```
