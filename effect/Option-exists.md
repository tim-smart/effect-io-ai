# exists

Check if a value in an `Option` type meets a certain predicate.

To import and use `exists` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.exists
```

**Example**

```ts
import { pipe, Option } from "effect"

const isEven = (n: number) => n % 2 === 0

assert.deepStrictEqual(pipe(Option.some(2), Option.exists(isEven)), true)
assert.deepStrictEqual(pipe(Option.some(1), Option.exists(isEven)), false)
assert.deepStrictEqual(pipe(Option.none(), Option.exists(isEven)), false)
```

**Signature**

```ts
export declare const exists: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Option<A>) => self is Option<B>
  <A>(predicate: Predicate<NoInfer<A>>): (self: Option<A>) => boolean
  <A, B extends A>(self: Option<A>, refinement: Refinement<A, B>): self is Option<B>
  <A>(self: Option<A>, predicate: Predicate<A>): boolean
}
```
