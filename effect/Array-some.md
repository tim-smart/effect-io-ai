# some

Check if a predicate holds true for some `ReadonlyArray` element.

To import and use `some` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.some
```

**Signature**

```ts
export declare const some: {
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: ReadonlyArray<A>) => self is NonEmptyReadonlyArray<A>
  <A>(self: ReadonlyArray<A>, predicate: (a: A, i: number) => boolean): self is NonEmptyReadonlyArray<A>
}
```
