# every

Check if a predicate holds true for every `ReadonlyArray` element.

To import and use `every` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.every
undefined

**Signature**

```ts
export declare const every: {
  <A, B extends A>(
    refinement: (a: NoInfer<A>, i: number) => a is B
  ): (self: ReadonlyArray<A>) => self is ReadonlyArray<B>
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: ReadonlyArray<A>) => boolean
  <A, B extends A>(self: ReadonlyArray<A>, refinement: (a: A, i: number) => a is B): self is ReadonlyArray<B>
  <A>(self: ReadonlyArray<A>, predicate: (a: A, i: number) => boolean): boolean
}
```
