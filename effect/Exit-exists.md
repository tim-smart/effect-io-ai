# exists

Executes the predicate on the value of the specified exit if it is a
`Success`, otherwise returns `false`.

To import and use `exists` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.exists
```

**Signature**

```ts
export declare const exists: {
  <A, B extends A>(refinement: Refinement<A, B>): <E>(self: Exit<E, A>) => self is Exit<never, B>
  <A>(predicate: Predicate<A>): <E>(self: Exit<E, A>) => boolean
  <E, A, B extends A>(self: Exit<E, A>, refinement: Refinement<A, B>): self is Exit<never, B>
  <E, A>(self: Exit<E, A>, predicate: Predicate<A>): boolean
}
```
