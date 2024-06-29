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
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <E>(self: Exit<A, E>) => self is Exit<B, never>
  <A>(predicate: Predicate<NoInfer<A>>): <E>(self: Exit<A, E>) => boolean
  <A, E, B extends A>(self: Exit<A, E>, refinement: Refinement<A, B>): self is Exit<B, never>
  <A, E>(self: Exit<A, E>, predicate: Predicate<A>): boolean
}
```
