# filter

Filters an `Option` using a predicate. If the predicate is not satisfied or the `Option` is `None` returns `None`.

If you need to change the type of the `Option` in addition to filtering, see `filterMap`.

To import and use `filter` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.filter
```

**Example**

```ts
import { Option } from "effect"

const removeEmptyString = (input: Option.Option<string>) => Option.filter(input, (value) => value !== "")

console.log(removeEmptyString(Option.none()))
// Output: { _id: 'Option', _tag: 'None' }

console.log(removeEmptyString(Option.some("")))
// Output: { _id: 'Option', _tag: 'None' }

console.log(removeEmptyString(Option.some("a")))
// Output: { _id: 'Option', _tag: 'Some', value: 'a' }
```

**Signature**

```ts
export declare const filter: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Option<A>) => Option<B>
  <A>(predicate: Predicate<NoInfer<A>>): (self: Option<A>) => Option<A>
  <A, B extends A>(self: Option<A>, refinement: Refinement<A, B>): Option<B>
  <A>(self: Option<A>, predicate: Predicate<A>): Option<A>
}
```
