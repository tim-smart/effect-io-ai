# all

Collects all of the specified exit values into a `Some<Exit<List<A>, E>>`. If
the provided iterable contains no elements, `None` will be returned.

To import and use `all` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.all
```

**Signature**

```ts
export declare const all: <A, E>(
  exits: Iterable<Exit<A, E>>,
  options?: { readonly parallel?: boolean | undefined } | undefined
) => Option.Option<Exit<A[], E>>
```
